package lecture1.jdbc2;

import lecture1.utils.StringUtil;

public class ProfessorService {

	static final String 교번_필수 = "교번을 입력하세요";
    static final String 교수님이름_필수 = "이름을 입력하세요";
    static final String 교번_중복 = "교번이 중복됩니다";

    public static String validate(Professor professor) throws Exception {
    	if (professor.getId() == 0)
            return 교번_필수;
        if (StringUtil.isEmptyOrBlank(professor.getProfessorName()))
            return 교수님이름_필수;
        Professor professor1 = ProfessorDAO.findById(professor.getId());
        if (professor1 != null)
            return 교번_중복;
        return null;
    }

    public static String insert(Professor professor) throws Exception {
        String errorMessage = validate(professor);
        if (errorMessage != null) return errorMessage;
        ProfessorDAO.insert(professor);
        return null;
    }

    public static String update(Professor professor) throws Exception {
        String errorMessage = validate(professor);
        if (errorMessage != null) return errorMessage;
        ProfessorDAO.update(professor);
        return null;
    }

}
