package org.apache.xmlbeans.impl.tool;

import com.miui.penengine.p015e.C6999h;
import java.io.File;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.HashSet;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;

/* loaded from: classes13.dex */
public class PrettyPrinter {
    private static final int DEFAULT_INDENT = 2;

    public static String indent(String str) throws IOException, XmlException {
        StringWriter stringWriter = new StringWriter();
        XmlObject.Factory.parse(str, new XmlOptions().setLoadLineNumbers()).save(stringWriter, new XmlOptions().setSavePrettyPrint().setSavePrettyPrintIndent(2));
        stringWriter.close();
        return stringWriter.getBuffer().toString();
    }

    public static void main(String[] strArr) {
        HashSet hashSet = new HashSet();
        hashSet.add(C6999h.f39688c);
        hashSet.add("help");
        hashSet.add("usage");
        hashSet.add("license");
        hashSet.add("version");
        CommandLine commandLine = new CommandLine(strArr, hashSet, Collections.singleton("indent"));
        if (commandLine.getOpt(C6999h.f39688c) != null || commandLine.getOpt("help") != null || commandLine.getOpt("usage") != null) {
            printUsage();
            System.exit(0);
            return;
        }
        String[] badOpts = commandLine.getBadOpts();
        if (badOpts.length > 0) {
            for (String str : badOpts) {
                System.out.println("Unrecognized option: " + str);
            }
            printUsage();
            System.exit(0);
            return;
        }
        if (commandLine.getOpt("license") != null) {
            CommandLine.printLicense();
            System.exit(0);
            return;
        }
        if (commandLine.getOpt("version") != null) {
            CommandLine.printVersion();
            System.exit(0);
            return;
        }
        if (commandLine.args().length == 0) {
            printUsage();
            return;
        }
        String opt = commandLine.getOpt("indent");
        int parseInt = opt == null ? 2 : Integer.parseInt(opt);
        File[] files = commandLine.getFiles();
        for (int i = 0; i < files.length; i++) {
            try {
                try {
                    XmlObject.Factory.parse(files[i], new XmlOptions().setLoadLineNumbers()).save(System.out, new XmlOptions().setSavePrettyPrint().setSavePrettyPrintIndent(parseInt));
                } catch (IOException e) {
                    System.err.println("Unable to pretty print " + files[i] + ": " + e.getMessage());
                }
            } catch (Exception e2) {
                System.err.println(files[i] + " not loadable: " + e2.getMessage());
            }
        }
    }

    public static void printUsage() {
        System.out.println("Pretty prints XML files.");
        System.out.println("Usage: xpretty [switches] file.xml");
        System.out.println("Switches:");
        System.out.println("    -indent #   use the given indent");
        System.out.println("    -license prints license information");
    }
}
