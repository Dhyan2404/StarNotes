package org.apache.poi.ooxml;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JException;
import org.apache.poi.openxml4j.exceptions.PartAlreadyExistsException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagePartName;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.chart.XDDFChart;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xwpf.usermodel.XWPFRelation;

/* loaded from: classes12.dex */
public class POIXMLDocumentPart {
    private static final Logger LOG = LogManager.getLogger((Class<?>) POIXMLDocumentPart.class);
    private String coreDocumentRel;
    private boolean isCommitted;
    private PackagePart packagePart;
    private POIXMLDocumentPart parent;
    private int relationCounter;
    private final Map<String, RelationPart> relations;

    /* loaded from: classes12.dex */
    public static class RelationPart {
        private final POIXMLDocumentPart documentPart;
        private final PackageRelationship relationship;

        public RelationPart(PackageRelationship packageRelationship, POIXMLDocumentPart pOIXMLDocumentPart) {
            this.relationship = packageRelationship;
            this.documentPart = pOIXMLDocumentPart;
        }

        public <T extends POIXMLDocumentPart> T getDocumentPart() {
            return (T) this.documentPart;
        }

        public PackageRelationship getRelationship() {
            return this.relationship;
        }
    }

    public POIXMLDocumentPart(OPCPackage oPCPackage) {
        this(oPCPackage, PackageRelationshipTypes.CORE_DOCUMENT);
    }

    @Internal
    @Deprecated
    public static void _invokeOnDocumentRead(POIXMLDocumentPart pOIXMLDocumentPart) throws IOException {
        pOIXMLDocumentPart.onDocumentRead();
    }

    private static PackagePart getPartFromOPCPackage(OPCPackage oPCPackage, String str) {
        try {
            PackageRelationship relationship = oPCPackage.getRelationshipsByType(str).getRelationship(0);
            if (relationship == null) {
                if (oPCPackage.getRelationshipsByType(PackageRelationshipTypes.STRICT_CORE_DOCUMENT).getRelationship(0) != null) {
                    IOUtils.closeQuietly(oPCPackage);
                    throw new POIXMLException("Strict OOXML isn't currently supported, please see bug #57699");
                }
                IOUtils.closeQuietly(oPCPackage);
                throw new POIXMLException("OOXML file structure broken/invalid - no core document found!");
            }
            PackagePart part = oPCPackage.getPart(relationship);
            if (part != null) {
                return part;
            }
            IOUtils.closeQuietly(oPCPackage);
            throw new POIXMLException("OOXML file structure broken/invalid - core document '" + relationship.getTargetURI() + "' not found.");
        } catch (POIXMLException e) {
            throw e;
        } catch (RuntimeException e2) {
            IOUtils.closeQuietly(oPCPackage);
            throw new POIXMLException("OOXML file structure broken/invalid", e2);
        }
    }

    public final RelationPart addRelation(String str, POIXMLRelation pOIXMLRelation, POIXMLDocumentPart pOIXMLDocumentPart) {
        PackageRelationship findExistingRelation = this.packagePart.findExistingRelation(pOIXMLDocumentPart.getPackagePart());
        if (findExistingRelation == null) {
            findExistingRelation = this.packagePart.addRelationship(pOIXMLDocumentPart.getPackagePart().getPartName(), TargetMode.INTERNAL, pOIXMLRelation.getRelation(), str);
        }
        addRelation(findExistingRelation, pOIXMLDocumentPart);
        return new RelationPart(findExistingRelation, pOIXMLDocumentPart);
    }

    public void commit() throws IOException {
    }

    public final POIXMLDocumentPart createRelationship(POIXMLRelation pOIXMLRelation, POIXMLFactory pOIXMLFactory) {
        return createRelationship(pOIXMLRelation, pOIXMLFactory, -1, false).getDocumentPart();
    }

    public int decrementRelationCounter() {
        int i = this.relationCounter - 1;
        this.relationCounter = i;
        return i;
    }

    @Internal
    public final int getNextPartNumber(POIXMLRelation pOIXMLRelation, int i) {
        OPCPackage oPCPackage = this.packagePart.getPackage();
        try {
            String defaultFileName = pOIXMLRelation.getDefaultFileName();
            if (defaultFileName.equals(pOIXMLRelation.getFileName(9999))) {
                return oPCPackage.containPart(PackagingURIHelper.createPartName(defaultFileName)) ? -1 : 0;
            }
            int size = i + oPCPackage.getParts().size();
            for (int i2 = i < 0 ? 1 : i; i2 <= size; i2++) {
                if (!oPCPackage.containPart(PackagingURIHelper.createPartName(pOIXMLRelation.getFileName(i2)))) {
                    return i2;
                }
            }
            return -1;
        } catch (InvalidFormatException e) {
            throw new POIXMLException(e);
        }
    }

    public final PackagePart getPackagePart() {
        return this.packagePart;
    }

    public final POIXMLDocumentPart getParent() {
        return this.parent;
    }

    public final POIXMLDocumentPart getRelationById(String str) {
        RelationPart relationPartById = getRelationPartById(str);
        if (relationPartById == null) {
            return null;
        }
        return relationPartById.getDocumentPart();
    }

    public int getRelationCounter() {
        return this.relationCounter;
    }

    public final String getRelationId(POIXMLDocumentPart pOIXMLDocumentPart) {
        for (RelationPart relationPart : this.relations.values()) {
            if (relationPart.getDocumentPart() == pOIXMLDocumentPart) {
                return relationPart.getRelationship().getId();
            }
        }
        return null;
    }

    public final RelationPart getRelationPartById(String str) {
        return this.relations.get(str);
    }

    public final List<RelationPart> getRelationParts() {
        return Collections.unmodifiableList(new ArrayList(this.relations.values()));
    }

    public final List<POIXMLDocumentPart> getRelations() {
        ArrayList arrayList = new ArrayList();
        Iterator<RelationPart> it2 = this.relations.values().iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getDocumentPart());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public PackagePart getTargetPart(PackageRelationship packageRelationship) throws InvalidFormatException {
        return getPackagePart().getRelatedPart(packageRelationship);
    }

    public int incrementRelationCounter() {
        int i = this.relationCounter + 1;
        this.relationCounter = i;
        return i;
    }

    public boolean isCommitted() {
        return this.isCommitted;
    }

    public void onDocumentCreate() throws IOException {
    }

    public void onDocumentRead() throws IOException {
    }

    public void onDocumentRemove() throws IOException {
    }

    public final void onSave(Set<PackagePart> set) throws IOException {
        if (this.isCommitted) {
            return;
        }
        prepareForCommit();
        commit();
        set.add(getPackagePart());
        Iterator<RelationPart> it2 = this.relations.values().iterator();
        while (it2.hasNext()) {
            POIXMLDocumentPart documentPart = it2.next().getDocumentPart();
            if (!set.contains(documentPart.getPackagePart())) {
                documentPart.onSave(set);
            }
        }
    }

    public void prepareForCommit() {
        PackagePart packagePart = getPackagePart();
        if (packagePart != null) {
            packagePart.clear();
        }
    }

    public void read(POIXMLFactory pOIXMLFactory, Map<PackagePart, POIXMLDocumentPart> map) throws OpenXML4JException {
        PackagePart packagePart = getPackagePart();
        if (packagePart.getContentType().equals(XWPFRelation.GLOSSARY_DOCUMENT.getContentType())) {
            LOG.atWarn().log("POI does not currently support template.main+xml (glossary) parts.  Skipping this part for now.");
            return;
        }
        POIXMLDocumentPart put = map.put(packagePart, this);
        if (put != null && put != this) {
            throw new POIXMLException("Unique PackagePart-POIXMLDocumentPart relation broken!");
        }
        if (packagePart.hasRelationships()) {
            PackageRelationshipCollection relationships = this.packagePart.getRelationships();
            ArrayList arrayList = new ArrayList();
            Iterator<PackageRelationship> it2 = relationships.iterator();
            while (it2.hasNext()) {
                PackageRelationship next = it2.next();
                if (next.getTargetMode() == TargetMode.INTERNAL) {
                    URI targetURI = next.getTargetURI();
                    PackagePart part = this.packagePart.getPackage().getPart(targetURI.getRawFragment() != null ? PackagingURIHelper.createPartName(targetURI.getPath()) : PackagingURIHelper.createPartName(targetURI));
                    if (part == null) {
                        LOG.atError().log("Skipped invalid entry {}", next.getTargetURI());
                    } else {
                        POIXMLDocumentPart pOIXMLDocumentPart = map.get(part);
                        if (pOIXMLDocumentPart == null) {
                            pOIXMLDocumentPart = pOIXMLFactory.createDocumentPart(this, part);
                            if ((this instanceof XDDFChart) && (pOIXMLDocumentPart instanceof XSSFWorkbook)) {
                                ((XDDFChart) this).setWorkbook((XSSFWorkbook) pOIXMLDocumentPart);
                            }
                            pOIXMLDocumentPart.parent = this;
                            map.put(part, pOIXMLDocumentPart);
                            arrayList.add(pOIXMLDocumentPart);
                        }
                        addRelation(next, pOIXMLDocumentPart);
                    }
                }
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                ((POIXMLDocumentPart) it3.next()).read(pOIXMLFactory, map);
            }
        }
    }

    public final void rebase(OPCPackage oPCPackage) throws InvalidFormatException {
        PackageRelationshipCollection relationshipsByType = this.packagePart.getRelationshipsByType(this.coreDocumentRel);
        if (relationshipsByType.size() == 1) {
            this.packagePart = this.packagePart.getRelatedPart(relationshipsByType.getRelationship(0));
            return;
        }
        throw new IllegalStateException("Tried to rebase using " + this.coreDocumentRel + " but found " + relationshipsByType.size() + " parts of the right type");
    }

    public final void removeRelation(POIXMLDocumentPart pOIXMLDocumentPart) {
        removeRelation(pOIXMLDocumentPart, true);
    }

    public void setCommitted(boolean z) {
        this.isCommitted = z;
    }

    public String toString() {
        PackagePart packagePart = this.packagePart;
        return packagePart == null ? "" : packagePart.toString();
    }

    public POIXMLDocumentPart(OPCPackage oPCPackage, String str) {
        this(getPartFromOPCPackage(oPCPackage, str));
        this.coreDocumentRel = str;
    }

    public final POIXMLDocumentPart createRelationship(POIXMLRelation pOIXMLRelation, POIXMLFactory pOIXMLFactory, int i) {
        return createRelationship(pOIXMLRelation, pOIXMLFactory, i, false).getDocumentPart();
    }

    public final boolean removeRelation(POIXMLDocumentPart pOIXMLDocumentPart, boolean z) {
        return removeRelation(getRelationId(pOIXMLDocumentPart), z);
    }

    public final RelationPart createRelationship(POIXMLRelation pOIXMLRelation, POIXMLFactory pOIXMLFactory, int i, boolean z) {
        try {
            PackagePartName createPartName = PackagingURIHelper.createPartName(pOIXMLRelation.getFileName(i));
            PackagePart createPart = this.packagePart.getPackage().createPart(createPartName, pOIXMLRelation.getContentType());
            PackageRelationship addRelationship = !z ? this.packagePart.addRelationship(createPartName, TargetMode.INTERNAL, pOIXMLRelation.getRelation()) : null;
            POIXMLDocumentPart newDocumentPart = pOIXMLFactory.newDocumentPart(pOIXMLRelation);
            newDocumentPart.packagePart = createPart;
            newDocumentPart.parent = this;
            if (!z) {
                addRelation(addRelationship, newDocumentPart);
            }
            return new RelationPart(addRelationship, newDocumentPart);
        } catch (PartAlreadyExistsException e) {
            throw e;
        } catch (Exception e2) {
            throw new POIXMLException(e2);
        }
    }

    public POIXMLDocumentPart() {
        this.coreDocumentRel = PackageRelationshipTypes.CORE_DOCUMENT;
        this.relations = new LinkedHashMap();
        this.isCommitted = false;
    }

    public final void removeRelation(String str) {
        removeRelation(str, true);
    }

    private boolean removeRelation(String str, boolean z) {
        RelationPart relationPart = this.relations.get(str);
        if (relationPart == null) {
            return false;
        }
        POIXMLDocumentPart documentPart = relationPart.getDocumentPart();
        documentPart.decrementRelationCounter();
        getPackagePart().removeRelationship(str);
        this.relations.remove(str);
        if (!z || documentPart.getRelationCounter() != 0) {
            return true;
        }
        try {
            documentPart.onDocumentRemove();
            getPackagePart().getPackage().removePart(documentPart.getPackagePart());
            return true;
        } catch (IOException e) {
            throw new POIXMLException(e);
        }
    }

    private void addRelation(PackageRelationship packageRelationship, POIXMLDocumentPart pOIXMLDocumentPart) {
        this.relations.put(packageRelationship.getId(), new RelationPart(packageRelationship, pOIXMLDocumentPart));
        pOIXMLDocumentPart.incrementRelationCounter();
    }

    public POIXMLDocumentPart(PackagePart packagePart) {
        this((POIXMLDocumentPart) null, packagePart);
    }

    public POIXMLDocumentPart(POIXMLDocumentPart pOIXMLDocumentPart, PackagePart packagePart) {
        this.coreDocumentRel = PackageRelationshipTypes.CORE_DOCUMENT;
        this.relations = new LinkedHashMap();
        this.isCommitted = false;
        this.packagePart = packagePart;
        this.parent = pOIXMLDocumentPart;
    }
}
