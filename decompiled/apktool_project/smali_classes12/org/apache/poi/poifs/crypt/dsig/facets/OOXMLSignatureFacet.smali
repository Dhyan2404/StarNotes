.class public Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacet;


# static fields
.field private static final ID_PACKAGE_OBJECT:Ljava/lang/String; = "idPackageObject"

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static final signed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 147

    const-class v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    const-string v1, "activeXControlBinary"

    const-string v2, "aFChunk"

    const-string v3, "attachedTemplate"

    const-string v4, "attachedToolbars"

    const-string v5, "audio"

    const-string v6, "calcChain"

    const-string v7, "chart"

    const-string v8, "chartColorStyle"

    const-string v9, "chartLayout"

    const-string v10, "chartsheet"

    const-string v11, "chartStyle"

    const-string v12, "chartUserShapes"

    const-string v13, "commentAuthors"

    const-string v14, "comments"

    const-string v15, "connections"

    const-string v16, "connectorXml"

    const-string v17, "control"

    const-string v18, "ctrlProp"

    const-string v19, "customData"

    const-string v20, "customData"

    const-string v21, "customProperty"

    const-string v22, "customXml"

    const-string v23, "diagram"

    const-string v24, "diagramColors"

    const-string v25, "diagramColorsHeader"

    const-string v26, "diagramData"

    const-string v27, "diagramDrawing"

    const-string v28, "diagramLayout"

    const-string v29, "diagramLayoutHeader"

    const-string v30, "diagramQuickStyle"

    const-string v31, "diagramQuickStyleHeader"

    const-string v32, "dialogsheet"

    const-string v33, "dictionary"

    const-string v34, "documentParts"

    const-string v35, "downRev"

    const-string v36, "drawing"

    const-string v37, "endnotes"

    const-string v38, "externalLink"

    const-string v39, "externalLinkPath"

    const-string v40, "font"

    const-string v41, "fontTable"

    const-string v42, "footer"

    const-string v43, "footnotes"

    const-string v44, "functionPrototypes"

    const-string v45, "glossaryDocument"

    const-string v46, "graphicFrameDoc"

    const-string v47, "groupShapeXml"

    const-string v48, "handoutMaster"

    const-string v49, "hdphoto"

    const-string v50, "header"

    const-string v51, "hyperlink"

    const-string v52, "image"

    const-string v53, "ink"

    const-string v54, "inkXml"

    const-string v55, "keyMapCustomizations"

    const-string v56, "legacyDiagramText"

    const-string v57, "legacyDocTextInfo"

    const-string v58, "mailMergeHeaderSource"

    const-string v59, "mailMergeRecipientData"

    const-string v60, "mailMergeSource"

    const-string v61, "media"

    const-string v62, "notesMaster"

    const-string v63, "notesSlide"

    const-string v64, "numbering"

    const-string v65, "officeDocument"

    const-string v66, "officeDocument"

    const-string v67, "oleObject"

    const-string v68, "package"

    const-string v69, "pictureXml"

    const-string v70, "pivotCacheDefinition"

    const-string v71, "pivotCacheRecords"

    const-string v72, "pivotTable"

    const-string v73, "powerPivotData"

    const-string v74, "presProps"

    const-string v75, "printerSettings"

    const-string v76, "queryTable"

    const-string v77, "recipientData"

    const-string v78, "settings"

    const-string v79, "shapeXml"

    const-string v80, "sharedStrings"

    const-string v81, "sheetMetadata"

    const-string v82, "slicer"

    const-string v83, "slicer"

    const-string v84, "slicerCache"

    const-string v85, "slicerCache"

    const-string v86, "slide"

    const-string v87, "slideLayout"

    const-string v88, "slideMaster"

    const-string v89, "slideUpdateInfo"

    const-string v90, "slideUpdateUrl"

    const-string v91, "smartTags"

    const-string v92, "styles"

    const-string v93, "stylesWithEffects"

    const-string v94, "table"

    const-string v95, "tableSingleCells"

    const-string v96, "tableStyles"

    const-string v97, "tags"

    const-string v98, "theme"

    const-string v99, "themeOverride"

    const-string v100, "timeline"

    const-string v101, "timelineCache"

    const-string v102, "transform"

    const-string v103, "ui/altText"

    const-string v104, "ui/buttonSize"

    const-string v105, "ui/controlID"

    const-string v106, "ui/description"

    const-string v107, "ui/enabled"

    const-string v108, "ui/extensibility"

    const-string v109, "ui/extensibility"

    const-string v110, "ui/helperText"

    const-string v111, "ui/imageID"

    const-string v112, "ui/imageMso"

    const-string v113, "ui/keyTip"

    const-string v114, "ui/label"

    const-string v115, "ui/lcid"

    const-string v116, "ui/loud"

    const-string v117, "ui/pressed"

    const-string v118, "ui/progID"

    const-string v119, "ui/ribbonID"

    const-string v120, "ui/showImage"

    const-string v121, "ui/showLabel"

    const-string v122, "ui/supertip"

    const-string v123, "ui/target"

    const-string v124, "ui/text"

    const-string v125, "ui/title"

    const-string v126, "ui/tooltip"

    const-string v127, "ui/userCustomization"

    const-string v128, "ui/visible"

    const-string v129, "userXmlData"

    const-string v130, "vbaProject"

    const-string v131, "video"

    const-string v132, "viewProps"

    const-string v133, "vmlDrawing"

    const-string v134, "volatileDependencies"

    const-string v135, "webSettings"

    const-string v136, "wordVbaData"

    const-string v137, "worksheet"

    const-string v138, "wsSortMap"

    const-string v139, "xlBinaryIndex"

    const-string v140, "xlExternalLinkPath/xlAlternateStartup"

    const-string v141, "xlExternalLinkPath/xlLibrary"

    const-string v142, "xlExternalLinkPath/xlPathMissing"

    const-string v143, "xlExternalLinkPath/xlStartup"

    const-string v144, "xlIntlMacrosheet"

    const-string v145, "xlMacrosheet"

    const-string v146, "xmlMaps"

    filled-new-array/range {v1 .. v146}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRelationshipReferenceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceReferenceURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?ContentType="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isSignedRelationship(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "relationship type: {}"

    invoke-interface {v0, v1, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ".*/relationships/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->signed:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "customXml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x5c

    const/16 v0, 0x2f

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string v0, "part name: {}"

    invoke-interface {p1, v0, p0}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public addManifestObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestReferences(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newManifest(Ljava/util/List;)Ljavax/xml/crypto/dsig/Manifest;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureTime(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;)V

    const-string p0, "idPackageObject"

    const/4 p2, 0x0

    invoke-virtual {v0, v2, p0, p2, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "#idPackageObject"

    const-string p4, "http://www.w3.org/2000/09/xmldsig#Object"

    invoke-static {p1, p0, p2, p4}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addManifestReferences(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getOpcPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;

    move-result-object p0

    const-string v0, "application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {p0, v0}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPartsByContentType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/openxml4j/opc/PackagePart;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(.*)/_rels/.*"

    const-string v5, "$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;

    invoke-direct {v4, p0}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;-><init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V

    invoke-virtual {v4, v2}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->parseRelationshipsPart(Lorg/apache/poi/openxml4j/opc/PackagePart;)V
    :try_end_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v5, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;

    invoke-direct {v5}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;-><init>()V

    invoke-virtual {v4}, Lorg/apache/poi/openxml4j/opc/PackageRelationshipCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/openxml4j/opc/PackageRelationship;

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getRelationshipType()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/poi/openxml4j/opc/TargetMode;->EXTERNAL:Lorg/apache/poi/openxml4j/opc/TargetMode;

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetMode()Lorg/apache/poi/openxml4j/opc/TargetMode;

    move-result-object v10

    if-ne v9, v10, :cond_1

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->addRelationshipReference(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v8}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->isSignedRelationship(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->addRelationshipReference(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/apache/poi/openxml4j/opc/PackageRelationship;->getTargetURI()Ljava/net/URI;

    move-result-object v6

    invoke-static {v6, v3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-static {v6}, Lorg/apache/poi/openxml4j/opc/PackagingURIHelper;->createPartName(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/poi/openxml4j/opc/OPCPackage;->getPart(Lorg/apache/poi/openxml4j/opc/PackagePartName;)Lorg/apache/poi/openxml4j/opc/PackagePart;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getContentType()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v10, "customXml"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "inkml+xml"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "text/xml"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v6, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v6}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v6

    const-string v7, "skipping customXml with content type: {}"

    invoke-interface {v6, v7, v9}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?ContentType="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v7, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    invoke-direct {p1, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    invoke-virtual {v5}, Lorg/apache/poi/poifs/crypt/dsig/services/RelationshipTransformService$RelationshipTransformParameterSpec;->hasSourceIds()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "http://schemas.openxmlformats.org/package/2006/RelationshipTransform"

    invoke-static {p1, v6, v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljavax/xml/crypto/dsig/spec/TransformParameterSpec;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

    invoke-static {p1, v5}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newTransform(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Transform;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->normalizePartName(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?ContentType=application/vnd.openxmlformats-package.relationships+xml"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4, v7}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/crypto/dsig/XMLSignatureException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid relationship descriptor: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/openxml4j/opc/PackagePartName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/xml/crypto/dsig/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    new-instance p0, Lcom/sunia/HTREnginev2/t6k;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/t6k;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public addSignatureInfo(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->createSignatureInfoV1(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;

    move-result-object p0

    invoke-interface {p0}, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;->getSignatureInfoV1()Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p0

    const/4 v3, 0x1

    invoke-interface {p2, p0, v3}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v4, p0}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "idOfficeV1Details"

    invoke-virtual {v1, v3, p0, v5}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperty;

    move-result-object p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {v1, v3, p0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperties(Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperties;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "idOfficeObject"

    invoke-virtual {v1, v2, v3, p0, p0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/2000/09/xmldsig#Object"

    invoke-static {p1, v2, p0, v3}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureImageValid()[B

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-virtual {v2, v5}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-direct {v6, v5}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "idValidSigLnImg"

    invoke-virtual {v1, v5, v6, p0, p0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, p0, v3}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureImageInvalid()[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v5, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-virtual {v2, v0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p2

    invoke-direct {v5, p2}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "idInvalidSigLnImg"

    invoke-virtual {v1, p2, v0, p0, p0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newXMLObject(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/XMLObject;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0, v3}, Lorg/apache/poi/poifs/crypt/dsig/facets/SignatureFacetHelper;->newReference(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/Reference;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addSignatureTime(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/XMLStructure;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureFactory()Ljavax/xml/crypto/dsig/XMLSignatureFactory;

    move-result-object p1

    sget-object v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/SignatureTimeDocument;->addNewSignatureTime()Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;

    move-result-object v0

    const-string v1, "YYYY-MM-DDThh:mm:ssTZD"

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setFormat(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->formatExecutionTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->setValue(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v1}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v1

    const-string v2, "execution time: {}"

    invoke-interface {v0}, Lorg/openxmlformats/schemas/xpackage/x2006/digitalSignature/CTSignatureTime;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljavax/xml/crypto/dom/DOMStructure;

    invoke-direct {v1, p2}, Ljavax/xml/crypto/dom/DOMStructure;-><init>(Lorg/w3c/dom/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getPackageSignatureId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "idSignatureTime"

    invoke-virtual {p1, v0, p0, p2}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperty(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperty;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Ljavax/xml/crypto/dsig/XMLSignatureFactory;->newSignatureProperties(Ljava/util/List;Ljava/lang/String;)Ljavax/xml/crypto/dsig/SignatureProperties;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createSignatureInfoV1(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->getSignatureConfig()Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;

    move-result-object p0

    sget-object p1, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;

    invoke-interface {p1}, Lcom/microsoft/schemas/office/x2006/digsig/SignatureInfoV1Document;->addNewSignatureInfoV1()Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestAlgo()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getDigestMethodUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->setManifestHashAlgorithm(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->setSignatureComments(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureImage()[B

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p0, 0x1

    invoke-interface {v0, p0}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->setSignatureType(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->getSignatureImageSetupId()Lorg/apache/poi/hpsf/ClassID;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClassID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->setSetupID(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->setSignatureImage([B)V

    const/4 p0, 0x2

    invoke-interface {v0, p0}, Lcom/microsoft/schemas/office/x2006/digsig/CTSignatureInfoV1;->setSignatureType(I)V

    :goto_0
    return-object p1
.end method

.method public preSign(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/Reference;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/xml/crypto/dsig/XMLObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/crypto/dsig/XMLSignatureException;
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v0}, Lorg/apache/logging/log4j/Logger;->atDebug()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v0

    const-string v1, "pre sign"

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addManifestObject(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/poifs/crypt/dsig/facets/OOXMLSignatureFacet;->addSignatureInfo(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/Document;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
