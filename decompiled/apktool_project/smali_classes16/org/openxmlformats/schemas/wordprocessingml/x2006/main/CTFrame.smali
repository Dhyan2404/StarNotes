.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;",
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

    const-string v2, "ctframe8f85type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewLinkedToFile()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewLongDesc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewMarH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPixelsMeasure;
.end method

.method public abstract addNewMarW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPixelsMeasure;
.end method

.method public abstract addNewName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewNoResizeAllowed()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewScrollbar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameScrollbar;
.end method

.method public abstract addNewSourceFileName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewTitle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getLinkedToFile()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getLongDesc()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getMarH()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPixelsMeasure;
.end method

.method public abstract getMarW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPixelsMeasure;
.end method

.method public abstract getName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getNoResizeAllowed()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getScrollbar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameScrollbar;
.end method

.method public abstract getSourceFileName()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getTitle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract isSetLinkedToFile()Z
.end method

.method public abstract isSetLongDesc()Z
.end method

.method public abstract isSetMarH()Z
.end method

.method public abstract isSetMarW()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNoResizeAllowed()Z
.end method

.method public abstract isSetScrollbar()Z
.end method

.method public abstract isSetSourceFileName()Z
.end method

.method public abstract isSetSz()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract setLinkedToFile(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setLongDesc(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setMarH(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPixelsMeasure;)V
.end method

.method public abstract setMarW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPixelsMeasure;)V
.end method

.method public abstract setName(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setNoResizeAllowed(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setScrollbar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameScrollbar;)V
.end method

.method public abstract setSourceFileName(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setSz(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setTitle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract unsetLinkedToFile()V
.end method

.method public abstract unsetLongDesc()V
.end method

.method public abstract unsetMarH()V
.end method

.method public abstract unsetMarW()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNoResizeAllowed()V
.end method

.method public abstract unsetScrollbar()V
.end method

.method public abstract unsetSourceFileName()V
.end method

.method public abstract unsetSz()V
.end method

.method public abstract unsetTitle()V
.end method
