.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/OpenAttrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Annotation"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "annotation5abfelemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AnnotationDocument$Annotation;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAppinfo()Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;
.end method

.method public abstract addNewDocumentation()Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;
.end method

.method public abstract getAppinfoArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;
.end method

.method public abstract getAppinfoArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;
.end method

.method public abstract getAppinfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentationArray(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;
.end method

.method public abstract getDocumentationArray()[Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;
.end method

.method public abstract getDocumentationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract insertNewAppinfo(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;
.end method

.method public abstract insertNewDocumentation(I)Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract removeAppinfo(I)V
.end method

.method public abstract removeDocumentation(I)V
.end method

.method public abstract setAppinfoArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;)V
.end method

.method public abstract setAppinfoArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;)V
.end method

.method public abstract setDocumentationArray(ILorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;)V
.end method

.method public abstract setDocumentationArray([Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract sizeOfAppinfoArray()I
.end method

.method public abstract sizeOfDocumentationArray()I
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
