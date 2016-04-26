package manager;

import entity.TestData;
import systemTools.JugeSystem;
import entity.OutResult;
import entity.Target;

import java.text.SimpleDateFormat;
import java.util.Vector;

public class JugeManager {

    public JugeSystem system = null;

    public JugeManager() {
        super();
    }

/*    public void setJugeSystem(JugeSystem jugeSystem) {
        this.system = jugeSystem;
    }*/

    public void addJuge(String problemId, String userId, String code) {
        try {
            // Problem problem=problemManager.getProblemById(problemId);
            Target target = new Target();
            target.fileName = "main";
            target.targetId = problemId + "_" + userId;
            target.filePath = "D:\\private\\Test\\Java\\out\\";
            target.fileExtension = ".java";
            target.objExtension = ".class";
            Vector<TestData> tests = null;                     //获取测试数据
            if (tests != null) {
                StringBuffer bufferInput = new StringBuffer();
                StringBuffer bufferOutput = new StringBuffer();
                for (int i = 0; i < tests.size(); i++) {
                    TestData testData = tests.get(i);
                    bufferInput.append(testData.getInput() + "\n");
                    bufferOutput.append(testData.getOutput() + "\n");
                }
                target.input = bufferInput.toString();
                target.output = bufferOutput.toString();
                System.out.println("input= " + target.input);
                System.out.println("output= " + target.output);
            }
            /*String limit[]=problemManager.getTimeAndMemoryLimit(problemId);*/
            String limit[] = null;
            if (limit != null) {
                target.setLimit(Long.valueOf(limit[0]), Long.valueOf(limit[1]));
                System.out.println(limit[0] + " " + limit[1]);
            } else {
                target.setLimit(6000, 10000);
            }
            system=new JugeSystem("Java");
            system.addTarget(target);
            system.addCode(code);
            system.start();
            if (system.getResutlNumber() >= 1) {
                setJugeResult();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setJugeResult() {
        try {
            System.out.println(system.getResutlNumber() + " ==resulNum");
            while (system.getResutlNumber() > 0) {
                System.out.println(system.getResutlNumber() + " ppresulNum");
                OutResult result = system.getResult();
                String code = system.getCode();
                System.out.println(result.targetId + " id");
                String[] pu = result.targetId.split("_");
                SimpleDateFormat dayFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	/*			SubmitStateServer submitStateServer = new SubmitStateServer();
				SubmitState submitState = new SubmitState();
				submitState.setState(result.getState());
				submitState.setCodeType("java");
				submitState.setMemory(String.valueOf(result.getMemory()));
				submitState.setRuntime(String.valueOf(result.getTime()));
				submitState.setSubmitDate(dayFormat.format(new Date()));
				submitState.setCodeLength(String.valueOf(code.length()));*/
				
	/*			if ("rightAnswer".equals(result.getState())) {
					AcceptCodeServer acceptCodeServer = new AcceptCodeServer();
					AcceptCode acceptCode = new AcceptCode();
					acceptCode.setCode(code);
					acceptCode.setPid(pu[0]);
					acceptCode.setUid(pu[1]);
					acceptCode.setPassDate(dayFormat.format(new Date()));

					acceptCodeServer.addAcceptCode(acceptCode);
					// System.out.println(acceptCode.getAid()+"=======aid
					// key==="+acceptCodeServer.getPrimaryKey());
					submitState.setCid(acceptCodeServer.getPrimaryKey());
				} else {

					System.out.println("getState " + result.getState());
					System.out.println("outExecute " + result.outExecute);
					System.out.println("outCompile " + result.outCompile);
					ErroCodeServer erroCodeServer = new ErroCodeServer();
					ErroCode erroCode = new ErroCode();
					erroCode.setCode(code);
					erroCode.setPid(pu[0]);
					erroCode.setUid(pu[1]);
					erroCode.setJugeDate(dayFormat.format(new Date()));
					erroCodeServer.addErroCode(erroCode);
					String key = erroCodeServer.getPrimaryKey();
					if (!"0".equals(key)) {
						submitState.setCid(key);
					}

				}
				submitStateServer.addSubmitstate(submitState);*/
            }
        } catch (Exception e) {
            System.out.println(e.getMessage() + " 提交到数据库");
        }
    }
}
