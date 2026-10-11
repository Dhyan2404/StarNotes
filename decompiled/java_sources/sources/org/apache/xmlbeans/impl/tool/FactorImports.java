package org.apache.xmlbeans.impl.tool;

import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.p119xb.xsdschema.FormChoice;
import org.apache.xmlbeans.impl.p119xb.xsdschema.IncludeDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamedAttributeGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.NamedGroup;
import org.apache.xmlbeans.impl.p119xb.xsdschema.SchemaDocument;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelAttribute;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelComplexType;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelElement;
import org.apache.xmlbeans.impl.p119xb.xsdschema.TopLevelSimpleType;

/* loaded from: classes13.dex */
public class FactorImports {
    private static URI commonAncestor(URI uri, URI uri2) {
        String uri3 = uri.toString();
        String uri4 = uri2.toString();
        int length = uri3.length();
        if (uri4.length() < length) {
            length = uri4.length();
        }
        int i = 0;
        while (i < length && uri3.charAt(i) == uri4.charAt(i)) {
            i++;
        }
        int i2 = i - 1;
        if (i2 >= 0) {
            i2 = uri3.lastIndexOf(47, i2);
        }
        if (i2 < 0) {
            return null;
        }
        try {
            return new URI(uri3.substring(0, i2));
        } catch (URISyntaxException unused) {
            return null;
        }
    }

    private static File commonFileFor(String str, String str2, int i, File file) {
        if (i > 0) {
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf < 0) {
                lastIndexOf = str.length();
            }
            str = str.substring(0, lastIndexOf) + i + str.substring(lastIndexOf);
        }
        return new File(file, str);
    }

    private static boolean isDuplicate(String str, String str2, Set<QName> set) {
        if (str == null) {
            return false;
        }
        return set.contains(new QName(str2, str));
    }

    private static boolean isFirstDuplicate(String str, String str2, Set<QName> set, Set<QName> set2) {
        if (str == null) {
            return false;
        }
        QName qName = new QName(str2, str);
        if (!set2.contains(qName) || !set.contains(qName)) {
            return false;
        }
        set.remove(qName);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static void main(String[] strArr) throws Exception {
        File file;
        File file2;
        ?? r1;
        ?? r7;
        HashSet hashSet;
        HashSet hashSet2;
        File file3;
        String str;
        int i;
        File[] fileArr;
        HashMap hashMap;
        String str2;
        HashSet hashSet3;
        String str3 = "warning: ";
        HashSet hashSet4 = new HashSet();
        hashSet4.add(C6999h.f39688c);
        hashSet4.add("help");
        hashSet4.add("usage");
        hashSet4.add("license");
        hashSet4.add("version");
        String str4 = "out";
        CommandLine commandLine = new CommandLine(strArr, hashSet4, Arrays.asList(Constants.ELEMNAME_IMPORT_STRING, "out"));
        if (commandLine.getOpt(C6999h.f39688c) != null || commandLine.getOpt("help") != null || commandLine.getOpt("usage") != null || strArr.length < 1) {
            printUsage();
            System.exit(0);
            return;
        }
        String[] badOpts = commandLine.getBadOpts();
        if (badOpts.length > 0) {
            for (String str5 : badOpts) {
                System.out.println("Unrecognized option: " + str5);
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
        String[] args = commandLine.args();
        if (args.length != 1) {
            System.exit(0);
            return;
        }
        String opt = commandLine.getOpt(Constants.ELEMNAME_IMPORT_STRING);
        if (opt == null) {
            opt = "common.xsd";
        }
        String opt2 = commandLine.getOpt("out");
        if (opt2 == null) {
            System.out.println("Using output directory 'out'");
        } else {
            str4 = opt2;
        }
        File file4 = new File(str4);
        File file5 = new File(args[0]);
        File[] files = commandLine.getFiles();
        HashMap hashMap2 = new HashMap();
        HashSet hashSet5 = new HashSet();
        HashSet hashSet6 = new HashSet();
        HashSet hashSet7 = new HashSet();
        HashSet hashSet8 = new HashSet();
        HashSet hashSet9 = new HashSet();
        HashSet hashSet10 = new HashSet();
        HashSet hashSet11 = new HashSet();
        HashSet hashSet12 = new HashSet();
        HashSet hashSet13 = new HashSet();
        File file6 = file5;
        HashSet hashSet14 = new HashSet();
        String str6 = opt;
        HashSet hashSet15 = new HashSet();
        int length = files.length;
        HashSet hashSet16 = hashSet14;
        int i2 = 0;
        while (i2 < length) {
            int i3 = length;
            File file7 = files[i2];
            try {
                try {
                    SchemaDocument parse = SchemaDocument.Factory.parse(file7);
                    hashMap2.put(parse, file7);
                    if (parse.getSchema().sizeOfImportArray() > 0 || parse.getSchema().sizeOfIncludeArray() > 0) {
                        fileArr = files;
                        try {
                            PrintStream printStream = System.out;
                            hashMap = hashMap2;
                            try {
                                StringBuilder sb = new StringBuilder();
                                sb.append(str3);
                                sb.append(file7);
                                i = i2;
                                sb.append(" contains imports or includes that are being ignored.");
                                printStream.println(sb.toString());
                            } catch (XmlException e) {
                                e = e;
                                str = str3;
                                i = i2;
                                hashSet3 = hashSet16;
                                PrintStream printStream2 = System.out;
                                StringBuilder sb2 = new StringBuilder();
                                str2 = str;
                                sb2.append(str2);
                                sb2.append(file7);
                                sb2.append(" is not a schema file - ");
                                sb2.append(e.getError().toString());
                                printStream2.println(sb2.toString());
                                i2 = i + 1;
                                hashSet16 = hashSet3;
                                str3 = str2;
                                length = i3;
                                files = fileArr;
                                hashMap2 = hashMap;
                            }
                        } catch (XmlException e2) {
                            e = e2;
                            str = str3;
                            i = i2;
                            hashMap = hashMap2;
                            hashSet3 = hashSet16;
                            PrintStream printStream22 = System.out;
                            StringBuilder sb22 = new StringBuilder();
                            str2 = str;
                            sb22.append(str2);
                            sb22.append(file7);
                            sb22.append(" is not a schema file - ");
                            sb22.append(e.getError().toString());
                            printStream22.println(sb22.toString());
                            i2 = i + 1;
                            hashSet16 = hashSet3;
                            str3 = str2;
                            length = i3;
                            files = fileArr;
                            hashMap2 = hashMap;
                        }
                    } else {
                        i = i2;
                        fileArr = files;
                        hashMap = hashMap2;
                    }
                    String targetNamespace = parse.getSchema().getTargetNamespace();
                    if (targetNamespace == null) {
                        targetNamespace = "";
                    }
                    try {
                        TopLevelComplexType[] complexTypeArray = parse.getSchema().getComplexTypeArray();
                        int length2 = complexTypeArray.length;
                        str = str3;
                        int i4 = 0;
                        while (i4 < length2) {
                            try {
                                noteName(complexTypeArray[i4].getName(), targetNamespace, hashSet7, hashSet12, hashSet15);
                                i4++;
                                complexTypeArray = complexTypeArray;
                            } catch (XmlException e3) {
                                e = e3;
                                hashSet3 = hashSet16;
                                PrintStream printStream222 = System.out;
                                StringBuilder sb222 = new StringBuilder();
                                str2 = str;
                                sb222.append(str2);
                                sb222.append(file7);
                                sb222.append(" is not a schema file - ");
                                sb222.append(e.getError().toString());
                                printStream222.println(sb222.toString());
                                i2 = i + 1;
                                hashSet16 = hashSet3;
                                str3 = str2;
                                length = i3;
                                files = fileArr;
                                hashMap2 = hashMap;
                            }
                        }
                        TopLevelSimpleType[] simpleTypeArray = parse.getSchema().getSimpleTypeArray();
                        int length3 = simpleTypeArray.length;
                        int i5 = 0;
                        while (i5 < length3) {
                            noteName(simpleTypeArray[i5].getName(), targetNamespace, hashSet7, hashSet12, hashSet15);
                            i5++;
                            simpleTypeArray = simpleTypeArray;
                        }
                        TopLevelElement[] elementArray = parse.getSchema().getElementArray();
                        int length4 = elementArray.length;
                        int i6 = 0;
                        while (i6 < length4) {
                            noteName(elementArray[i6].getName(), targetNamespace, hashSet5, hashSet10, hashSet15);
                            i6++;
                            elementArray = elementArray;
                        }
                        TopLevelAttribute[] attributeArray = parse.getSchema().getAttributeArray();
                        int length5 = attributeArray.length;
                        int i7 = 0;
                        while (i7 < length5) {
                            noteName(attributeArray[i7].getName(), targetNamespace, hashSet6, hashSet11, hashSet15);
                            i7++;
                            attributeArray = attributeArray;
                        }
                        NamedGroup[] groupArray = parse.getSchema().getGroupArray();
                        int length6 = groupArray.length;
                        int i8 = 0;
                        while (i8 < length6) {
                            noteName(groupArray[i8].getName(), targetNamespace, hashSet8, hashSet13, hashSet15);
                            i8++;
                            groupArray = groupArray;
                        }
                        NamedAttributeGroup[] attributeGroupArray = parse.getSchema().getAttributeGroupArray();
                        int length7 = attributeGroupArray.length;
                        int i9 = 0;
                        while (i9 < length7) {
                            int i10 = length7;
                            hashSet3 = hashSet16;
                            try {
                                noteName(attributeGroupArray[i9].getName(), targetNamespace, hashSet9, hashSet3, hashSet15);
                                i9++;
                                hashSet16 = hashSet3;
                                length7 = i10;
                            } catch (XmlException e4) {
                                e = e4;
                                PrintStream printStream2222 = System.out;
                                StringBuilder sb2222 = new StringBuilder();
                                str2 = str;
                                sb2222.append(str2);
                                sb2222.append(file7);
                                sb2222.append(" is not a schema file - ");
                                sb2222.append(e.getError().toString());
                                printStream2222.println(sb2222.toString());
                                i2 = i + 1;
                                hashSet16 = hashSet3;
                                str3 = str2;
                                length = i3;
                                files = fileArr;
                                hashMap2 = hashMap;
                            }
                        }
                        hashSet3 = hashSet16;
                        str2 = str;
                    } catch (XmlException e5) {
                        e = e5;
                        str = str3;
                    }
                } catch (XmlException e6) {
                    e = e6;
                    str = str3;
                    i = i2;
                    fileArr = files;
                }
                i2 = i + 1;
                hashSet16 = hashSet3;
                str3 = str2;
                length = i3;
                files = fileArr;
                hashMap2 = hashMap;
            } catch (IOException e7) {
                System.err.println("Unable to load " + file7 + " - " + e7.getMessage());
                System.exit(1);
                return;
            }
        }
        HashMap hashMap3 = hashMap2;
        HashSet hashSet17 = hashSet16;
        if (hashMap3.size() == 0) {
            System.out.println("No schema files found.");
            System.exit(0);
            return;
        }
        if (hashSet12.size() + hashSet10.size() + hashSet11.size() + hashSet13.size() + hashSet17.size() == 0) {
            System.out.println("No duplicate names found.");
            System.exit(0);
            return;
        }
        HashMap hashMap4 = new HashMap();
        HashMap hashMap5 = new HashMap();
        int i11 = hashSet15.size() == 1 ? 0 : 1;
        Iterator it2 = hashSet15.iterator();
        while (it2.hasNext()) {
            String str7 = (String) it2.next();
            Iterator it3 = it2;
            SchemaDocument parse2 = SchemaDocument.Factory.parse("<xs:schema xmlns:xs='http://www.w3.org/2001/XMLSchema'/>");
            if (str7.length() > 0) {
                parse2.getSchema().setTargetNamespace(str7);
            }
            parse2.getSchema().setElementFormDefault(FormChoice.QUALIFIED);
            hashMap4.put(str7, parse2);
            String str8 = str6;
            hashMap5.put(parse2, commonFileFor(str8, str7, i11, file4));
            i11++;
            it2 = it3;
            hashSet9 = hashSet9;
            str6 = str8;
        }
        HashSet hashSet18 = hashSet9;
        File file8 = file4;
        Iterator it4 = hashMap3.keySet().iterator();
        while (it4.hasNext()) {
            SchemaDocument schemaDocument = (SchemaDocument) it4.next();
            String targetNamespace2 = schemaDocument.getSchema().getTargetNamespace();
            if (targetNamespace2 == null) {
                targetNamespace2 = "";
            }
            SchemaDocument schemaDocument2 = (SchemaDocument) hashMap4.get(targetNamespace2);
            HashMap hashMap6 = hashMap4;
            TopLevelComplexType[] complexTypeArray2 = schemaDocument.getSchema().getComplexTypeArray();
            Iterator it5 = it4;
            int length8 = complexTypeArray2.length - 1;
            boolean z = false;
            while (length8 >= 0) {
                HashMap hashMap7 = hashMap5;
                if (isDuplicate(complexTypeArray2[length8].getName(), targetNamespace2, hashSet12)) {
                    if (isFirstDuplicate(complexTypeArray2[length8].getName(), targetNamespace2, hashSet7, hashSet12)) {
                        file3 = file8;
                        schemaDocument2.getSchema().addNewComplexType().set(complexTypeArray2[length8]);
                    } else {
                        file3 = file8;
                    }
                    schemaDocument.getSchema().removeComplexType(length8);
                    z = true;
                } else {
                    file3 = file8;
                }
                length8--;
                file8 = file3;
                hashMap5 = hashMap7;
            }
            HashMap hashMap8 = hashMap5;
            File file9 = file8;
            TopLevelSimpleType[] simpleTypeArray2 = schemaDocument.getSchema().getSimpleTypeArray();
            for (int i12 = 0; i12 < simpleTypeArray2.length; i12++) {
                if (isDuplicate(simpleTypeArray2[i12].getName(), targetNamespace2, hashSet12)) {
                    if (isFirstDuplicate(simpleTypeArray2[i12].getName(), targetNamespace2, hashSet7, hashSet12)) {
                        schemaDocument2.getSchema().addNewSimpleType().set(simpleTypeArray2[i12]);
                    }
                    schemaDocument.getSchema().removeSimpleType(i12);
                    z = true;
                }
            }
            TopLevelElement[] elementArray2 = schemaDocument.getSchema().getElementArray();
            for (int i13 = 0; i13 < elementArray2.length; i13++) {
                if (isDuplicate(elementArray2[i13].getName(), targetNamespace2, hashSet10)) {
                    if (isFirstDuplicate(elementArray2[i13].getName(), targetNamespace2, hashSet5, hashSet10)) {
                        schemaDocument2.getSchema().addNewElement().set(elementArray2[i13]);
                    }
                    schemaDocument.getSchema().removeElement(i13);
                    z = true;
                }
            }
            TopLevelAttribute[] attributeArray2 = schemaDocument.getSchema().getAttributeArray();
            for (int i14 = 0; i14 < attributeArray2.length; i14++) {
                if (isDuplicate(attributeArray2[i14].getName(), targetNamespace2, hashSet11)) {
                    if (isFirstDuplicate(attributeArray2[i14].getName(), targetNamespace2, hashSet6, hashSet11)) {
                        schemaDocument2.getSchema().addNewElement().set(attributeArray2[i14]);
                    }
                    schemaDocument.getSchema().removeElement(i14);
                    z = true;
                }
            }
            NamedGroup[] groupArray2 = schemaDocument.getSchema().getGroupArray();
            for (int i15 = 0; i15 < groupArray2.length; i15++) {
                if (isDuplicate(groupArray2[i15].getName(), targetNamespace2, hashSet13)) {
                    if (isFirstDuplicate(groupArray2[i15].getName(), targetNamespace2, hashSet8, hashSet13)) {
                        schemaDocument2.getSchema().addNewElement().set(groupArray2[i15]);
                    }
                    schemaDocument.getSchema().removeElement(i15);
                    z = true;
                }
            }
            NamedAttributeGroup[] attributeGroupArray2 = schemaDocument.getSchema().getAttributeGroupArray();
            int i16 = 0;
            while (i16 < attributeGroupArray2.length) {
                if (isDuplicate(attributeGroupArray2[i16].getName(), targetNamespace2, hashSet17)) {
                    hashSet = hashSet18;
                    if (isFirstDuplicate(attributeGroupArray2[i16].getName(), targetNamespace2, hashSet, hashSet17)) {
                        hashSet2 = hashSet17;
                        schemaDocument2.getSchema().addNewElement().set(attributeGroupArray2[i16]);
                    } else {
                        hashSet2 = hashSet17;
                    }
                    schemaDocument.getSchema().removeElement(i16);
                    z = true;
                } else {
                    hashSet = hashSet18;
                    hashSet2 = hashSet17;
                }
                i16++;
                hashSet17 = hashSet2;
                hashSet18 = hashSet;
            }
            HashSet hashSet19 = hashSet18;
            HashSet hashSet20 = hashSet17;
            if (z) {
                IncludeDocument.Include addNewInclude = schemaDocument.getSchema().addNewInclude();
                r1 = hashMap3;
                File file10 = (File) r1.get(schemaDocument);
                file = file6;
                file2 = file9;
                r7 = hashMap8;
                addNewInclude.setSchemaLocation(relativeURIFor(outputFileFor(file10, file, file2), (File) r7.get(schemaDocument2)));
            } else {
                file = file6;
                file2 = file9;
                r1 = hashMap3;
                r7 = hashMap8;
            }
            hashMap3 = r1;
            file6 = file;
            it4 = it5;
            hashMap4 = hashMap6;
            hashSet17 = hashSet20;
            hashSet18 = hashSet19;
            file8 = file2;
            hashMap5 = r7;
        }
        Map map = hashMap5;
        File file11 = file8;
        File file12 = file6;
        Map map2 = hashMap3;
        if (!file11.isDirectory() && !file11.mkdirs()) {
            System.err.println("Unable to makedir " + file11);
            System.exit(1);
            return;
        }
        for (SchemaDocument schemaDocument3 : map2.keySet()) {
            File file13 = (File) map2.get(schemaDocument3);
            File outputFileFor = outputFileFor(file13, file12, file11);
            if (outputFileFor == null) {
                System.out.println("Cannot copy " + file13);
            } else {
                schemaDocument3.save(outputFileFor, new XmlOptions().setSavePrettyPrint().setSaveAggressiveNamespaces());
            }
        }
        for (SchemaDocument schemaDocument4 : map.keySet()) {
            schemaDocument4.save((File) map.get(schemaDocument4), new XmlOptions().setSavePrettyPrint().setSaveAggressiveNamespaces());
        }
    }

    private static void noteName(String str, String str2, Set<QName> set, Set<QName> set2, Set<String> set3) {
        if (str == null) {
            return;
        }
        QName qName = new QName(str2, str);
        if (!set.contains(qName)) {
            set.add(qName);
        } else {
            set2.add(qName);
            set3.add(str2);
        }
    }

    private static File outputFileFor(File file, File file2, File file3) {
        URI relativize = file2.getAbsoluteFile().toURI().relativize(file.getAbsoluteFile().toURI());
        if (!relativize.isAbsolute()) {
            return new File(CodeGenUtil.resolve(file3.toURI(), relativize));
        }
        System.out.println("Cannot relativize " + file);
        return null;
    }

    public static void printUsage() {
        System.out.println("Refactors a directory of XSD files to remove name conflicts.");
        System.out.println("Usage: sfactor [-import common.xsd] [-out outputdir] inputdir");
        System.out.println("    -import common.xsd - The XSD file to contain redundant ");
        System.out.println("                         definitions for importing.");
        System.out.println("    -out outputdir - The directory into which to place XSD ");
        System.out.println("                     files resulting from refactoring, ");
        System.out.println("                     plus a commonly imported common.xsd.");
        System.out.println("    inputdir - The directory containing the XSD files with");
        System.out.println("               redundant definitions.");
        System.out.println("    -license - Print license information.");
        System.out.println();
    }

    private static String relativeURIFor(File file, File file2) {
        int indexOf;
        URI uri = file.getAbsoluteFile().toURI();
        URI uri2 = file2.getAbsoluteFile().toURI();
        URI commonAncestor = commonAncestor(uri, uri2);
        if (commonAncestor == null) {
            return uri2.toString();
        }
        URI relativize = commonAncestor.relativize(uri);
        URI relativize2 = commonAncestor.relativize(uri2);
        if (relativize.isAbsolute() || relativize2.isAbsolute()) {
            return uri2.toString();
        }
        String uri3 = relativize.toString();
        String str = "";
        int i = 0;
        while (i < uri3.length() && (indexOf = uri3.indexOf(47, i)) >= 0) {
            str = str + "../";
            i = indexOf + 1;
        }
        return str + relativize2.toString();
    }
}
