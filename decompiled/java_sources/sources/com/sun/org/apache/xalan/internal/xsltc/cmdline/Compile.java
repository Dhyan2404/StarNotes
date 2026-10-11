package com.sun.org.apache.xalan.internal.xsltc.cmdline;

import com.sun.org.apache.xalan.internal.xsltc.cmdline.getopt.GetOpt;
import com.sun.org.apache.xalan.internal.xsltc.cmdline.getopt.GetOptsException;
import com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC;
import com.sun.org.apache.xalan.internal.xsltc.compiler.util.ErrorMsg;
import java.io.File;
import java.net.URL;
import java.util.Vector;

/* loaded from: classes10.dex */
public final class Compile {
    private static int VERSION_DELTA = 0;
    private static int VERSION_MAJOR = 1;
    private static int VERSION_MINOR = 4;
    private static boolean _allowExit = true;

    public static void main(String[] strArr) {
        boolean compile;
        try {
            GetOpt getOpt = new GetOpt(strArr, "o:d:j:p:uxhsinv");
            if (strArr.length < 1) {
                printUsage();
            }
            XSLTC xsltc = new XSLTC();
            xsltc.init();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            while (true) {
                int nextOption = getOpt.getNextOption();
                if (nextOption == -1) {
                    if (z) {
                        if (!z2) {
                            System.err.println(new ErrorMsg(ErrorMsg.COMPILE_STDIN_ERR));
                            if (_allowExit) {
                                System.exit(-1);
                            }
                        }
                        compile = xsltc.compile(System.in, xsltc.getClassName());
                    } else {
                        String[] cmdArgs = getOpt.getCmdArgs();
                        Vector vector = new Vector();
                        for (String str : cmdArgs) {
                            vector.addElement(z3 ? new URL(str) : new File(str).toURL());
                        }
                        compile = xsltc.compile(vector);
                    }
                    if (!compile) {
                        xsltc.printWarnings();
                        xsltc.printErrors();
                        if (_allowExit) {
                            System.exit(-1);
                            return;
                        }
                        return;
                    }
                    xsltc.printWarnings();
                    if (xsltc.getJarFileName() != null) {
                        xsltc.outputToJar();
                    }
                    if (_allowExit) {
                        System.exit(0);
                        return;
                    }
                    return;
                }
                if (nextOption == 100) {
                    xsltc.setDestDirectory(getOpt.getOptionArg());
                } else if (nextOption == 115) {
                    _allowExit = false;
                } else if (nextOption == 117) {
                    z3 = true;
                } else if (nextOption == 120) {
                    xsltc.setDebug(true);
                } else if (nextOption == 105) {
                    z = true;
                } else if (nextOption != 106) {
                    switch (nextOption) {
                        case 110:
                            xsltc.setTemplateInlining(true);
                            break;
                        case 111:
                            xsltc.setClassName(getOpt.getOptionArg());
                            z2 = true;
                            break;
                        case 112:
                            xsltc.setPackageName(getOpt.getOptionArg());
                            break;
                        default:
                            printUsage();
                            break;
                    }
                } else {
                    xsltc.setJarFileName(getOpt.getOptionArg());
                }
            }
        } catch (GetOptsException e) {
            System.err.println(e);
            printUsage();
        } catch (Exception e2) {
            e2.printStackTrace();
            if (_allowExit) {
                System.exit(-1);
            }
        }
    }

    public static void printUsage() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("XSLTC version ");
        sb.append(VERSION_MAJOR);
        sb.append(".");
        sb.append(VERSION_MINOR);
        if (VERSION_DELTA > 0) {
            str = "." + VERSION_DELTA;
        } else {
            str = "";
        }
        sb.append(str);
        StringBuffer stringBuffer = new StringBuffer(sb.toString());
        System.err.println(((Object) stringBuffer) + "\n" + new ErrorMsg(ErrorMsg.COMPILE_USAGE_STR));
        if (_allowExit) {
            System.exit(-1);
        }
    }
}
