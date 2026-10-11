package org.apache.xmlbeans.impl.tool;

import androidx.appcompat.widget.ActivityChooserModel;
import com.miui.penengine.p015e.C6999h;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;

/* loaded from: classes13.dex */
public class StreamInstanceValidator {
    public static void main(String[] strArr) {
        HashSet hashSet = new HashSet();
        hashSet.add(C6999h.f39688c);
        hashSet.add("help");
        hashSet.add("usage");
        hashSet.add("license");
        hashSet.add("version");
        hashSet.add("dl");
        hashSet.add("noupr");
        hashSet.add("noupa");
        CommandLine commandLine = new CommandLine(strArr, hashSet, Collections.EMPTY_SET);
        if (commandLine.getOpt(C6999h.f39688c) == null && commandLine.getOpt("help") == null && commandLine.getOpt("usage") == null) {
            if (strArr.length >= 1) {
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
                boolean z = commandLine.getOpt("dl") != null;
                boolean z2 = commandLine.getOpt("nopvr") != null;
                boolean z3 = commandLine.getOpt("noupa") != null;
                File[] filesEndingWith = commandLine.filesEndingWith(".xsd");
                File[] filesEndingWith2 = commandLine.filesEndingWith(ActivityChooserModel.f1436y);
                File[] filesEndingWith3 = commandLine.filesEndingWith(".jar");
                ArrayList arrayList = new ArrayList();
                XmlOptions loadLineNumbers = new XmlOptions().setLoadLineNumbers();
                for (int i = 0; i < filesEndingWith.length; i++) {
                    try {
                        arrayList.add(XmlObject.Factory.parse(filesEndingWith[i], loadLineNumbers.setLoadMessageDigest()));
                    } catch (Exception e) {
                        System.err.println(filesEndingWith[i] + " not loadable: " + e);
                    }
                }
                XmlObject[] xmlObjectArr = (XmlObject[]) arrayList.toArray(new XmlObject[0]);
                ArrayList arrayList2 = new ArrayList();
                XmlOptions xmlOptions = new XmlOptions();
                xmlOptions.setErrorListener(arrayList2);
                if (z) {
                    xmlOptions.setCompileDownloadUrls();
                }
                if (z2) {
                    xmlOptions.setCompileNoPvrRule();
                }
                if (z3) {
                    xmlOptions.setCompileNoUpaRule();
                }
                SchemaTypeLoader typeLoaderForResource = (filesEndingWith3 == null || filesEndingWith3.length <= 0) ? null : XmlBeans.typeLoaderForResource(XmlBeans.resourceLoaderForPath(filesEndingWith3));
                if (xmlObjectArr != null) {
                    try {
                        if (xmlObjectArr.length > 0) {
                            typeLoaderForResource = XmlBeans.compileXsd(xmlObjectArr, typeLoaderForResource, xmlOptions);
                        }
                    } catch (Exception e2) {
                        if (arrayList2.isEmpty() || !(e2 instanceof XmlException)) {
                            e2.printStackTrace(System.err);
                        }
                        System.out.println("Schema invalid");
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            System.out.println(it2.next());
                        }
                        return;
                    }
                }
                validateFiles(filesEndingWith2, typeLoaderForResource, loadLineNumbers);
                return;
            }
        }
        printUsage();
        System.exit(0);
    }

    public static void printUsage() {
        System.out.println("Validates the specified instance against the specified schema.");
        System.out.println("A streaming validation useful for validating very large instance ");
        System.out.println("documents with less memory. Contrast with the validate tool.");
        System.out.println("Usage: svalidate [-dl] [-nopvr] [-noupa] [-license] schema.xsd instance.xml");
        System.out.println("Options:");
        System.out.println("    -dl - permit network downloads for imports and includes (default is off)");
        System.out.println("    -noupa - do not enforce the unique particle attribution rule");
        System.out.println("    -nopvr - do not enforce the particle valid (restriction) rule");
        System.out.println("    -license - prints license information");
    }

    private static String stringFromError(XmlError xmlError, String str) {
        return XmlError.severityAsString(xmlError.getSeverity()) + ": " + str + ":" + xmlError.getLine() + ":" + xmlError.getColumn() + " " + xmlError.getMessage() + " ";
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void validateFiles(java.io.File[] r18, org.apache.xmlbeans.SchemaTypeLoader r19, org.apache.xmlbeans.XmlOptions r20) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.tool.StreamInstanceValidator.validateFiles(java.io.File[], org.apache.xmlbeans.SchemaTypeLoader, org.apache.xmlbeans.XmlOptions):void");
    }
}
