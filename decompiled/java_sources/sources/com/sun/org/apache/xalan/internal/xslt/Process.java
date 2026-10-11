package com.sun.org.apache.xalan.internal.xslt;

import com.sun.org.apache.xalan.internal.res.XSLMessages;
import java.io.IOException;
import java.util.ResourceBundle;

/* loaded from: classes10.dex */
public class Process {
    /* JADX WARN: Removed duplicated region for block: B:256:0x0775 A[LOOP:3: B:254:0x0771->B:256:0x0775, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:272:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0792  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void _main(java.lang.String[] r28) {
        /*
            Method dump skipped, instructions count: 2010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xalan.internal.xslt.Process._main(java.lang.String[]):void");
    }

    public static void doExit(String str) {
        throw new RuntimeException(str);
    }

    public static void printArgOptions(ResourceBundle resourceBundle) {
        System.out.println(resourceBundle.getString("xslProc_option"));
        System.out.println("\n\t\t\t" + resourceBundle.getString("xslProc_common_options") + "\n");
        System.out.println(resourceBundle.getString("optionXSLTC"));
        System.out.println(resourceBundle.getString("optionIN"));
        System.out.println(resourceBundle.getString("optionXSL"));
        System.out.println(resourceBundle.getString("optionOUT"));
        System.out.println(resourceBundle.getString("optionV"));
        System.out.println(resourceBundle.getString("optionEDUMP"));
        System.out.println(resourceBundle.getString("optionXML"));
        System.out.println(resourceBundle.getString("optionTEXT"));
        System.out.println(resourceBundle.getString("optionHTML"));
        System.out.println(resourceBundle.getString("optionPARAM"));
        System.out.println(resourceBundle.getString("optionMEDIA"));
        System.out.println(resourceBundle.getString("optionFLAVOR"));
        System.out.println(resourceBundle.getString("optionDIAG"));
        System.out.println(resourceBundle.getString("optionURIRESOLVER"));
        System.out.println(resourceBundle.getString("optionENTITYRESOLVER"));
        waitForReturnKey(resourceBundle);
        System.out.println(resourceBundle.getString("optionCONTENTHANDLER"));
        System.out.println(resourceBundle.getString("optionSECUREPROCESSING"));
        System.out.println("\n\t\t\t" + resourceBundle.getString("xslProc_xsltc_options") + "\n");
        System.out.println(resourceBundle.getString("optionXO"));
        waitForReturnKey(resourceBundle);
        System.out.println(resourceBundle.getString("optionXD"));
        System.out.println(resourceBundle.getString("optionXJ"));
        System.out.println(resourceBundle.getString("optionXP"));
        System.out.println(resourceBundle.getString("optionXN"));
        System.out.println(resourceBundle.getString("optionXX"));
        System.out.println(resourceBundle.getString("optionXT"));
    }

    private static void printInvalidXSLTCOption(String str) {
        System.err.println(XSLMessages.createMessage("xslProc_invalid_xsltc_option", new Object[]{str}));
    }

    private static void printInvalidXalanOption(String str) {
        System.err.println(XSLMessages.createMessage("xslProc_invalid_xalan_option", new Object[]{str}));
    }

    private static void waitForReturnKey(ResourceBundle resourceBundle) {
        System.out.println(resourceBundle.getString("xslProc_return_to_continue"));
        do {
            try {
            } catch (IOException unused) {
                return;
            }
        } while (System.in.read() != 10);
    }
}
