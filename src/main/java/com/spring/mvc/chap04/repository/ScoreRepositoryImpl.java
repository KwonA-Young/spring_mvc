package com.spring.mvc.chap04.repository;


import com.spring.mvc.chap04.entity.Score;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ScoreRepositoryImpl implements ScoreRepository {


    // key : 학번, value : 성적정보
    private static final Map<Integer, Score> scoreMap;

    // 학번에 사용할 일련번호
    private static int sequence; // primary key로 사용할 학번을 체크해주는 변수, 0으로 자동 초기화.

    // 정적변수를 초기화해줄 정적 블록
    static {
        scoreMap = new HashMap<>();
        Score stu1 = new Score("김자바", 100, 50, 70, ++sequence,0, 0);
        Score stu2 = new Score("이부트", 33, 56, 0, ++sequence,0, 0);
        Score stu3 = new Score("박디비", 88, 12, 54, ++sequence,0, 0 );

        scoreMap.put(stu1.getStudentNumber(), stu1);
        scoreMap.put(stu2.getStudentNumber(), stu2);
        scoreMap.put(stu3.getStudentNumber(), stu3);
        System.out.println(scoreMap);
    }

    // 실제로 구현해야 하는 기능들.
    @Override
    public List<Score> findAll() {

        return null;
    }

    @Override
    public boolean save(Score score) {
        return false;
    }

    @Override
    public boolean deleteByStudentNumber(int studentNumber) {
        return false;
    }

    @Override
    public Score findByStudentNumber(int studentNumber) {
        return null;
    }
}
