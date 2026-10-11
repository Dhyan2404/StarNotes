package org.apache.poi.poifs.crypt.dsig.facets;

import com.caverock.androidsvg.SVGParser;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1;
import com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document;
import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.xml.crypto.XMLStructure;
import javax.xml.crypto.dom.DOMStructure;
import javax.xml.crypto.dsig.Manifest;
import javax.xml.crypto.dsig.Reference;
import javax.xml.crypto.dsig.SignatureProperty;
import javax.xml.crypto.dsig.XMLObject;
import javax.xml.crypto.dsig.XMLSignatureException;
import javax.xml.crypto.dsig.XMLSignatureFactory;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.ContentTypes;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackageRelationship;
import org.apache.poi.openxml4j.opc.PackageRelationshipCollection;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.openxml4j.opc.TargetMode;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.crypt.dsig.SignatureConfig;
import org.apache.poi.poifs.crypt.dsig.SignatureInfo;
import org.apache.poi.poifs.crypt.dsig.services.RelationshipTransformService;
import org.openxmlformats.schemas.xpackage.x2006.digitalSignature.CTSignatureTime;
import org.openxmlformats.schemas.xpackage.x2006.digitalSignature.SignatureTimeDocument;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes12.dex */
public class OOXMLSignatureFacet implements SignatureFacet {
    private static final String ID_PACKAGE_OBJECT = "idPackageObject";
    private static final Logger LOG = LogManager.getLogger((Class<?>) OOXMLSignatureFacet.class);
    private static final Set<String> signed = (Set) Stream.of((Object[]) new String[]{"activeXControlBinary", "aFChunk", "attachedTemplate", "attachedToolbars", "audio", "calcChain", "chart", "chartColorStyle", "chartLayout", "chartsheet", "chartStyle", "chartUserShapes", "commentAuthors", "comments", "connections", "connectorXml", SessionDescription.f26438n, "ctrlProp", "customData", "customData", "customProperty", "customXml", "diagram", "diagramColors", "diagramColorsHeader", "diagramData", "diagramDrawing", "diagramLayout", "diagramLayoutHeader", "diagramQuickStyle", "diagramQuickStyleHeader", "dialogsheet", "dictionary", "documentParts", "downRev", "drawing", "endnotes", "externalLink", "externalLinkPath", "font", "fontTable", Constants.NAME_FOOTER, "footnotes", "functionPrototypes", "glossaryDocument", "graphicFrameDoc", "groupShapeXml", "handoutMaster", "hdphoto", Constants.NAME_HEADER, "hyperlink", "image", "ink", "inkXml", "keyMapCustomizations", "legacyDiagramText", "legacyDocTextInfo", "mailMergeHeaderSource", "mailMergeRecipientData", "mailMergeSource", SVGParser.f16046r, "notesMaster", "notesSlide", XResourceBundle.LANG_NUMBERING, "officeDocument", "officeDocument", "oleObject", "package", "pictureXml", "pivotCacheDefinition", "pivotCacheRecords", "pivotTable", "powerPivotData", "presProps", "printerSettings", "queryTable", "recipientData", "settings", "shapeXml", "sharedStrings", "sheetMetadata", "slicer", "slicer", "slicerCache", "slicerCache", "slide", "slideLayout", "slideMaster", "slideUpdateInfo", "slideUpdateUrl", "smartTags", "styles", "stylesWithEffects", "table", "tableSingleCells", "tableStyles", "tags", "theme", "themeOverride", "timeline", "timelineCache", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_TRANSFORM_STRING, "ui/altText", "ui/buttonSize", "ui/controlID", "ui/description", "ui/enabled", "ui/extensibility", "ui/extensibility", "ui/helperText", "ui/imageID", "ui/imageMso", "ui/keyTip", "ui/label", "ui/lcid", "ui/loud", "ui/pressed", "ui/progID", "ui/ribbonID", "ui/showImage", "ui/showLabel", "ui/supertip", "ui/target", "ui/text", "ui/title", "ui/tooltip", "ui/userCustomization", "ui/visible", "userXmlData", "vbaProject", "video", "viewProps", "vmlDrawing", "volatileDependencies", "webSettings", "wordVbaData", "worksheet", "wsSortMap", "xlBinaryIndex", "xlExternalLinkPath/xlAlternateStartup", "xlExternalLinkPath/xlLibrary", "xlExternalLinkPath/xlPathMissing", "xlExternalLinkPath/xlStartup", "xlIntlMacrosheet", "xlMacrosheet", "xmlMaps"}).collect(Collectors.toSet());

    public static String getRelationshipReferenceURI(String str) {
        return "/" + str + "?ContentType=application/vnd.openxmlformats-package.relationships+xml";
    }

    public static String getResourceReferenceURI(String str, String str2) {
        return "/" + str + "?ContentType=" + str2;
    }

    public static boolean isSignedRelationship(String str) {
        LOG.atDebug().log("relationship type: {}", str);
        String replaceFirst = str.replaceFirst(".*/relationships/", "");
        return signed.contains(replaceFirst) || replaceFirst.endsWith("customXml");
    }

    private static String normalizePartName(URI uri, String str) throws XMLSignatureException {
        String aSCIIString = uri.toASCIIString();
        if (!aSCIIString.startsWith(str)) {
            aSCIIString = str + aSCIIString;
        }
        try {
            String replace = new URI(aSCIIString).normalize().getPath().replace('\\', '/');
            LOG.atDebug().log("part name: {}", replace);
            return replace;
        } catch (URISyntaxException e) {
            throw new XMLSignatureException(e);
        }
    }

    public void addManifestObject(SignatureInfo signatureInfo, Document document, List<Reference> list, List<XMLObject> list2) throws XMLSignatureException {
        XMLSignatureFactory signatureFactory = signatureInfo.getSignatureFactory();
        ArrayList arrayList = new ArrayList();
        addManifestReferences(signatureInfo, arrayList);
        Manifest newManifest = signatureFactory.newManifest(arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(newManifest);
        addSignatureTime(signatureInfo, document, arrayList2);
        list2.add(signatureFactory.newXMLObject(arrayList2, ID_PACKAGE_OBJECT, (String) null, (String) null));
        list.add(SignatureFacetHelper.newReference(signatureInfo, "#idPackageObject", null, "http://www.w3.org/2000/09/xmldsig#Object"));
    }

    public void addManifestReferences(SignatureInfo signatureInfo, List<Reference> list) throws XMLSignatureException {
        OPCPackage opcPackage = signatureInfo.getOpcPackage();
        ArrayList<PackagePart> partsByContentType = opcPackage.getPartsByContentType(ContentTypes.RELATIONSHIPS_PART);
        HashSet hashSet = new HashSet();
        for (PackagePart packagePart : partsByContentType) {
            String replaceFirst = packagePart.getPartName().getName().replaceFirst("(.*)/_rels/.*", "$1");
            try {
                PackageRelationshipCollection packageRelationshipCollection = new PackageRelationshipCollection(opcPackage);
                packageRelationshipCollection.parseRelationshipsPart(packagePart);
                RelationshipTransformService.RelationshipTransformParameterSpec relationshipTransformParameterSpec = new RelationshipTransformService.RelationshipTransformParameterSpec();
                Iterator<PackageRelationship> it2 = packageRelationshipCollection.iterator();
                while (it2.hasNext()) {
                    PackageRelationship next = it2.next();
                    String relationshipType = next.getRelationshipType();
                    if (TargetMode.EXTERNAL == next.getTargetMode()) {
                        relationshipTransformParameterSpec.addRelationshipReference(next.getId());
                    } else if (isSignedRelationship(relationshipType)) {
                        relationshipTransformParameterSpec.addRelationshipReference(next.getId());
                        String normalizePartName = normalizePartName(next.getTargetURI(), replaceFirst);
                        if (hashSet.contains(normalizePartName)) {
                            continue;
                        } else {
                            hashSet.add(normalizePartName);
                            try {
                                String contentType = opcPackage.getPart(PackagingURIHelper.createPartName(normalizePartName)).getContentType();
                                if (!relationshipType.endsWith("customXml") || contentType.equals("inkml+xml") || contentType.equals("text/xml")) {
                                    list.add(SignatureFacetHelper.newReference(signatureInfo, normalizePartName + "?ContentType=" + contentType, null, null));
                                } else {
                                    LOG.atDebug().log("skipping customXml with content type: {}", contentType);
                                }
                            } catch (InvalidFormatException e) {
                                throw new XMLSignatureException(e);
                            }
                        }
                    } else {
                        continue;
                    }
                }
                if (relationshipTransformParameterSpec.hasSourceIds()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(SignatureFacetHelper.newTransform(signatureInfo, RelationshipTransformService.TRANSFORM_URI, relationshipTransformParameterSpec));
                    arrayList.add(SignatureFacetHelper.newTransform(signatureInfo, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"));
                    list.add(SignatureFacetHelper.newReference(signatureInfo, normalizePartName(packagePart.getPartName().getURI(), replaceFirst) + "?ContentType=application/vnd.openxmlformats-package.relationships+xml", arrayList, null));
                }
            } catch (InvalidFormatException e2) {
                throw new XMLSignatureException("Invalid relationship descriptor: " + packagePart.getPartName().getName(), e2);
            }
        }
        list.sort(Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.t6k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((Reference) obj).getURI();
            }
        }));
    }

    public void addSignatureInfo(SignatureInfo signatureInfo, Document document, List<Reference> list, List<XMLObject> list2) throws XMLSignatureException {
        SignatureConfig signatureConfig = signatureInfo.getSignatureConfig();
        XMLSignatureFactory signatureFactory = signatureInfo.getSignatureFactory();
        ArrayList arrayList = new ArrayList();
        Element element = (Element) document.importNode(createSignatureInfoV1(signatureInfo).getSignatureInfoV1().getDomNode(), true);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new DOMStructure(element));
        SignatureProperty newSignatureProperty = signatureFactory.newSignatureProperty(arrayList2, "#" + signatureConfig.getPackageSignatureId(), "idOfficeV1Details");
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(newSignatureProperty);
        arrayList.add(signatureFactory.newSignatureProperties(arrayList3, (String) null));
        list2.add(signatureFactory.newXMLObject(arrayList, "idOfficeObject", (String) null, (String) null));
        list.add(SignatureFacetHelper.newReference(signatureInfo, "#idOfficeObject", null, "http://www.w3.org/2000/09/xmldsig#Object"));
        Base64.Encoder encoder = Base64.getEncoder();
        byte[] signatureImageValid = signatureConfig.getSignatureImageValid();
        if (signatureImageValid != null) {
            list2.add(signatureFactory.newXMLObject(Collections.singletonList(new DOMStructure(document.createTextNode(encoder.encodeToString(signatureImageValid)))), "idValidSigLnImg", (String) null, (String) null));
            list.add(SignatureFacetHelper.newReference(signatureInfo, "#idValidSigLnImg", null, "http://www.w3.org/2000/09/xmldsig#Object"));
        }
        byte[] signatureImageInvalid = signatureConfig.getSignatureImageInvalid();
        if (signatureImageInvalid != null) {
            list2.add(signatureFactory.newXMLObject(Collections.singletonList(new DOMStructure(document.createTextNode(encoder.encodeToString(signatureImageInvalid)))), "idInvalidSigLnImg", (String) null, (String) null));
            list.add(SignatureFacetHelper.newReference(signatureInfo, "#idInvalidSigLnImg", null, "http://www.w3.org/2000/09/xmldsig#Object"));
        }
    }

    public void addSignatureTime(SignatureInfo signatureInfo, Document document, List<XMLStructure> list) {
        SignatureConfig signatureConfig = signatureInfo.getSignatureConfig();
        XMLSignatureFactory signatureFactory = signatureInfo.getSignatureFactory();
        CTSignatureTime addNewSignatureTime = SignatureTimeDocument.Factory.newInstance().addNewSignatureTime();
        addNewSignatureTime.setFormat("YYYY-MM-DDThh:mm:ssTZD");
        addNewSignatureTime.setValue(signatureConfig.formatExecutionTime());
        LOG.atDebug().log("execution time: {}", addNewSignatureTime.getValue());
        Element element = (Element) document.importNode(addNewSignatureTime.getDomNode(), true);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new DOMStructure(element));
        SignatureProperty newSignatureProperty = signatureFactory.newSignatureProperty(arrayList, "#" + signatureConfig.getPackageSignatureId(), "idSignatureTime");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(newSignatureProperty);
        list.add(signatureFactory.newSignatureProperties(arrayList2, (String) null));
    }

    public SignatureInfoV1Document createSignatureInfoV1(SignatureInfo signatureInfo) {
        SignatureConfig signatureConfig = signatureInfo.getSignatureConfig();
        SignatureInfoV1Document newInstance = SignatureInfoV1Document.Factory.newInstance();
        CTSignatureInfoV1 addNewSignatureInfoV1 = newInstance.addNewSignatureInfoV1();
        if (signatureConfig.getDigestAlgo() != HashAlgorithm.sha1) {
            addNewSignatureInfoV1.setManifestHashAlgorithm(signatureConfig.getDigestMethodUri());
        }
        String signatureDescription = signatureConfig.getSignatureDescription();
        if (signatureDescription != null) {
            addNewSignatureInfoV1.setSignatureComments(signatureDescription);
        }
        byte[] signatureImage = signatureConfig.getSignatureImage();
        if (signatureImage == null) {
            addNewSignatureInfoV1.setSignatureType(1);
        } else {
            addNewSignatureInfoV1.setSetupID(signatureConfig.getSignatureImageSetupId().toString());
            addNewSignatureInfoV1.setSignatureImage(signatureImage);
            addNewSignatureInfoV1.setSignatureType(2);
        }
        return newInstance;
    }

    @Override // org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet
    public void preSign(SignatureInfo signatureInfo, Document document, List<Reference> list, List<XMLObject> list2) throws XMLSignatureException {
        LOG.atDebug().log("pre sign");
        addManifestObject(signatureInfo, document, list, list2);
        addSignatureInfo(signatureInfo, document, list, list2);
    }
}
