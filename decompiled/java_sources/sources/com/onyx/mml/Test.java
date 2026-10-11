package com.onyx.mml;

import java.io.FileInputStream;

/* loaded from: classes9.dex */
public class Test {
    public static void main(String[] strArr) throws Exception {
        String mml2LaTeX = MMLUtils.mml2LaTeX(new FileInputStream("F:\\WorkSpace\\onyx\\neo-mml\\testdata\\mml\\math1.xml"));
        System.out.println("s = " + mml2LaTeX);
    }
}
