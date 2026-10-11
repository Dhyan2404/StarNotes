.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;",
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

    const-string v2, "ctstyles8506type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyles;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;
.end method

.method public abstract addNewLatentStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;
.end method

.method public abstract addNewStyle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
.end method

.method public abstract getDocDefaults()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;
.end method

.method public abstract getLatentStyles()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;
.end method

.method public abstract getStyleArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
.end method

.method public abstract getStyleArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
.end method

.method public abstract getStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewStyle(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;
.end method

.method public abstract isSetDocDefaults()Z
.end method

.method public abstract isSetLatentStyles()Z
.end method

.method public abstract removeStyle(I)V
.end method

.method public abstract setDocDefaults(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocDefaults;)V
.end method

.method public abstract setLatentStyles(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLatentStyles;)V
.end method

.method public abstract setStyleArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V
.end method

.method public abstract setStyleArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTStyle;)V
.end method

.method public abstract sizeOfStyleArray()I
.end method

.method public abstract unsetDocDefaults()V
.end method

.method public abstract unsetLatentStyles()V
.end method
