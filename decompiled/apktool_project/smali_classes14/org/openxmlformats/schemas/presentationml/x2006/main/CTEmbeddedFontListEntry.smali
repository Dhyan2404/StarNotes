.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;",
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

    const-string v2, "ctembeddedfontlistentry48b4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontListEntry;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBold()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract addNewBoldItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract addNewFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract addNewItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract addNewRegular()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract getBold()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract getBoldItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract getFont()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;
.end method

.method public abstract getItalic()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract getRegular()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;
.end method

.method public abstract isSetBold()Z
.end method

.method public abstract isSetBoldItalic()Z
.end method

.method public abstract isSetItalic()Z
.end method

.method public abstract isSetRegular()Z
.end method

.method public abstract setBold(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;)V
.end method

.method public abstract setBoldItalic(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;)V
.end method

.method public abstract setFont(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextFont;)V
.end method

.method public abstract setItalic(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;)V
.end method

.method public abstract setRegular(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTEmbeddedFontDataId;)V
.end method

.method public abstract unsetBold()V
.end method

.method public abstract unsetBoldItalic()V
.end method

.method public abstract unsetItalic()V
.end method

.method public abstract unsetRegular()V
.end method
