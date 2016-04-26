package systemTools;

import entity.OutResult;
import entity.Target;

public  class Manager implements IManager {
	public Target target;
	public OutResult result;
	private Compiler compiler;
	private Executor executor;
	private Runtime runtime;
	private Controller controler;
 
	public Manager(Target target){
		
		
		this.target=target;
		runtime= Runtime.getRuntime();
		result=new OutResult();
		controler=new Controller(runtime,target);
		compiler=new Compiler("Javac","",target,runtime);
		executor=new Executor("Java","-cp .;\""+target.filePath+";\"",target,runtime);
	}
	public Manager(String name,String args,Target target,OutResult result){
		 this.target=target;
		 this.result=result;
		 compiler=new Compiler(name,args,target,runtime);
		 executor=new Executor("Java","",target,runtime);
	}
	public void control() {
		 
		if(target==null){
			System.out.println("no target file!");
			return;
		}
		if(!"rightAnswer".equals(result.getState())){
			result=compiler.compile();    //compile
		}
		System.out.println("编译后的结果状态"+result.getState());
		if("compileSuccess".equals(result.getState()) ||"rightAnswer".equals(result.getState())){
			System.out.println("begine control");			 
			result=executor.execute(controler);
		}
	}
	public void setCompilerName(String name){
		compiler.name=name;
	}
	public void setCompilerArgs(String args){
		compiler.args=args;
	}
	
	
}
