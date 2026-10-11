.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;",
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

    const-string v2, "ctframeset1033type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFrame()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;
.end method

.method public abstract addNewFrameLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameLayout;
.end method

.method public abstract addNewFrameset()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;
.end method

.method public abstract addNewFramesetSplitbar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramesetSplitbar;
.end method

.method public abstract addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract addNewTitle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getFrameArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;
.end method

.method public abstract getFrameArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;
.end method

.method public abstract getFrameLayout()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameLayout;
.end method

.method public abstract getFrameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFramesetArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;
.end method

.method public abstract getFramesetArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;
.end method

.method public abstract getFramesetList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFramesetSplitbar()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramesetSplitbar;
.end method

.method public abstract getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract getTitle()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;
.end method

.method public abstract insertNewFrame(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;
.end method

.method public abstract insertNewFrameset(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;
.end method

.method public abstract isSetFrameLayout()Z
.end method

.method public abstract isSetFramesetSplitbar()Z
.end method

.method public abstract isSetSz()Z
.end method

.method public abstract isSetTitle()Z
.end method

.method public abstract removeFrame(I)V
.end method

.method public abstract removeFrameset(I)V
.end method

.method public abstract setFrameArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;)V
.end method

.method public abstract setFrameArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrame;)V
.end method

.method public abstract setFrameLayout(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameLayout;)V
.end method

.method public abstract setFramesetArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;)V
.end method

.method public abstract setFramesetArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFrameset;)V
.end method

.method public abstract setFramesetSplitbar(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFramesetSplitbar;)V
.end method

.method public abstract setSz(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract setTitle(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTString;)V
.end method

.method public abstract sizeOfFrameArray()I
.end method

.method public abstract sizeOfFramesetArray()I
.end method

.method public abstract unsetFrameLayout()V
.end method

.method public abstract unsetFramesetSplitbar()V
.end method

.method public abstract unsetSz()V
.end method

.method public abstract unsetTitle()V
.end method
