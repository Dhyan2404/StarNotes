.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlPr;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctcustomxmlpr4b8atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCustomXmlPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAttr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;
.end method

.method public abstract addNewPlaceholder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getAttrArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;
.end method

.method public abstract getAttrArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;
.end method

.method public abstract getAttrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaceholder()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract insertNewAttr(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;
.end method

.method public abstract isSetPlaceholder()Z
.end method

.method public abstract removeAttr(I)V
.end method

.method public abstract setAttrArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;)V
.end method

.method public abstract setAttrArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAttr;)V
.end method

.method public abstract setPlaceholder(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract sizeOfAttrArray()I
.end method

.method public abstract unsetPlaceholder()V
.end method
