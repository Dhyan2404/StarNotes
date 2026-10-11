package org.apache.poi.ooxml.dev;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.Iterator;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackageAccess;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;

/* loaded from: classes12.dex */
public class OOXMLLister implements Closeable {
    private final OPCPackage container;
    private final PrintStream disp;

    public OOXMLLister(OPCPackage oPCPackage) {
        this(oPCPackage, System.out);
    }

    private void displayRelation(PackageRelationship packageRelationship, String str) {
        this.disp.println(str + "Relationship:");
        this.disp.println(str + "\tFrom: " + packageRelationship.getSourceURI());
        this.disp.println(str + "\tTo:   " + packageRelationship.getTargetURI());
        this.disp.println(str + "\tID:   " + packageRelationship.getId());
        this.disp.println(str + "\tMode: " + packageRelationship.getTargetMode());
        this.disp.println(str + "\tType: " + packageRelationship.getRelationshipType());
    }

    public static long getSize(PackagePart packagePart) throws IOException {
        InputStream inputStream = packagePart.getInputStream();
        try {
            byte[] bArr = new byte[8192];
            long j = 0;
            int i = 0;
            while (i > -1) {
                i = inputStream.read(bArr);
                if (i > 0) {
                    j += i;
                }
            }
            if (inputStream != null) {
                inputStream.close();
            }
            return j;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static void main(String[] strArr) throws IOException, InvalidFormatException {
        if (strArr.length == 0) {
            System.err.println("Use:");
            System.err.println("\tjava OOXMLLister <filename>");
            System.exit(1);
        }
        File file = new File(strArr[0]);
        if (!file.exists()) {
            System.err.println("Error, file not found!");
            System.err.println("\t" + file);
            System.exit(2);
        }
        OOXMLLister oOXMLLister = new OOXMLLister(OPCPackage.open(file.toString(), PackageAccess.READ));
        try {
            oOXMLLister.disp.println(file + "\n");
            oOXMLLister.displayParts();
            oOXMLLister.disp.println();
            oOXMLLister.displayRelations();
            oOXMLLister.close();
        } finally {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.container.close();
    }

    public void displayParts() throws InvalidFormatException, IOException {
        Iterator<PackagePart> it2 = this.container.getParts().iterator();
        while (it2.hasNext()) {
            PackagePart next = it2.next();
            this.disp.println(next.getPartName());
            this.disp.println("\t" + next.getContentType());
            if (!next.getPartName().toString().equals("/docProps/core.xml")) {
                this.disp.println("\t" + getSize(next) + " bytes");
            }
            if (!next.isRelationshipPart()) {
                this.disp.println("\t" + next.getRelationships().size() + " relations");
                Iterator<PackageRelationship> it3 = next.getRelationships().iterator();
                while (it3.hasNext()) {
                    displayRelation(it3.next(), "\t  ");
                }
            }
        }
    }

    public void displayRelations() {
        Iterator<PackageRelationship> it2 = this.container.getRelationships().iterator();
        while (it2.hasNext()) {
            displayRelation(it2.next(), "");
        }
    }

    public OOXMLLister(OPCPackage oPCPackage, PrintStream printStream) {
        this.container = oPCPackage;
        this.disp = printStream;
    }
}
