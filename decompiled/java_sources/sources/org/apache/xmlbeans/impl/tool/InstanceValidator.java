package org.apache.xmlbeans.impl.tool;

import androidx.appcompat.widget.ActivityChooserModel;
import com.miui.penengine.p015e.C6999h;
import java.io.File;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlError;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;

/* loaded from: classes13.dex */
public class InstanceValidator {
    public static int extraMain(String[] strArr) {
        int i;
        HashSet hashSet = new HashSet();
        hashSet.add(C6999h.f39688c);
        hashSet.add("help");
        hashSet.add("usage");
        hashSet.add("license");
        hashSet.add("version");
        hashSet.add("dl");
        hashSet.add("noupa");
        hashSet.add("nopvr");
        hashSet.add("strict");
        hashSet.add("partial");
        CommandLine commandLine = new CommandLine(strArr, hashSet, Collections.EMPTY_SET);
        int i2 = 0;
        if (commandLine.getOpt(C6999h.f39688c) != null || commandLine.getOpt("help") != null || commandLine.getOpt("usage") != null || strArr.length < 1) {
            printUsage();
            return 0;
        }
        String[] badOpts = commandLine.getBadOpts();
        if (badOpts.length > 0) {
            for (String str : badOpts) {
                System.out.println("Unrecognized option: " + str);
            }
            printUsage();
            return 0;
        }
        if (commandLine.getOpt("license") != null) {
            CommandLine.printLicense();
            return 0;
        }
        if (commandLine.getOpt("version") != null) {
            CommandLine.printVersion();
            return 0;
        }
        if (commandLine.args().length == 0) {
            return 0;
        }
        boolean z = commandLine.getOpt("dl") != null;
        boolean z2 = commandLine.getOpt("nopvr") != null;
        boolean z3 = commandLine.getOpt("noupa") != null;
        boolean z4 = commandLine.getOpt("strict") != null;
        boolean z5 = commandLine.getOpt("partial") != null;
        File[] filesEndingWith = commandLine.filesEndingWith(".xsd");
        File[] filesEndingWith2 = commandLine.filesEndingWith(ActivityChooserModel.f1436y);
        File[] filesEndingWith3 = commandLine.filesEndingWith(".jar");
        ArrayList arrayList = new ArrayList();
        int length = filesEndingWith.length;
        int i3 = 0;
        while (i3 < length) {
            File file = filesEndingWith[i3];
            try {
                arrayList.add(XmlObject.Factory.parse(file, new XmlOptions().setLoadLineNumbers().setLoadMessageDigest()));
            } catch (Exception e) {
                System.err.println(file + " not loadable: " + e);
            }
            i3++;
            i2 = 0;
        }
        XmlObject[] xmlObjectArr = (XmlObject[]) arrayList.toArray(new XmlObject[i2]);
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
        if (z5) {
            xmlOptions.setCompilePartialTypesystem();
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
                PrintStream printStream = System.out;
                StringBuilder sb = new StringBuilder();
                sb.append("Schema invalid:");
                sb.append(z5 ? " couldn't recover from errors" : "");
                printStream.println(sb.toString());
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    System.out.println((XmlError) it2.next());
                }
                return 10;
            }
        }
        if (!z5 || arrayList2.isEmpty()) {
            i = 0;
        } else {
            System.out.println("Schema invalid: partial schema type system recovered");
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                System.out.println((XmlError) it3.next());
            }
            i = 11;
        }
        if (typeLoaderForResource == null) {
            typeLoaderForResource = XmlBeans.getContextTypeLoader();
        }
        for (File file2 : filesEndingWith2) {
            try {
                XmlOptions xmlOptions2 = new XmlOptions();
                xmlOptions2.setLoadLineNumbersEndElement();
                XmlObject parse = typeLoaderForResource.parse(file2, (SchemaType) null, xmlOptions2);
                ArrayList arrayList3 = new ArrayList();
                if (parse.schemaType() == XmlObject.type) {
                    System.out.println(file2 + " NOT valid.  ");
                    System.out.println("  Document type not found.");
                } else if (parse.validate(z4 ? new XmlOptions().setErrorListener(arrayList3).setValidateStrict() : new XmlOptions().setErrorListener(arrayList3))) {
                    System.out.println(file2 + " valid.");
                } else {
                    System.out.println(file2 + " NOT valid.");
                    Iterator it4 = arrayList3.iterator();
                    while (it4.hasNext()) {
                        System.out.println((XmlError) it4.next());
                    }
                    i = 1;
                }
            } catch (Exception e3) {
                System.err.println(file2 + " not loadable: " + e3);
                e3.printStackTrace(System.err);
            }
        }
        return i;
    }

    public static void main(String[] strArr) {
        System.exit(extraMain(strArr));
    }

    public static void printUsage() {
        System.out.println("Validates the specified instance against the specified schema.");
        System.out.println("Contrast with the svalidate tool, which validates using a stream.");
        System.out.println("Usage: validate [-dl] [-nopvr] [-noupa] [-license] schema.xsd instance.xml");
        System.out.println("Options:");
        System.out.println("    -dl - permit network downloads for imports and includes (default is off)");
        System.out.println("    -noupa - do not enforce the unique particle attribution rule");
        System.out.println("    -nopvr - do not enforce the particle valid (restriction) rule");
        System.out.println("    -strict - performs strict(er) validation");
        System.out.println("    -partial - allow partial schema type system");
        System.out.println("    -license - prints license information");
    }
}
