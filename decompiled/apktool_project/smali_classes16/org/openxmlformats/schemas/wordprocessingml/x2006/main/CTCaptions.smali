.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaptions;",
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

    const-string v2, "ctcaptions9fbbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaptions;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaptions;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAutoCaptions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAutoCaptions;
.end method

.method public abstract addNewCaption()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;
.end method

.method public abstract getAutoCaptions()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAutoCaptions;
.end method

.method public abstract getCaptionArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;
.end method

.method public abstract getCaptionArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;
.end method

.method public abstract getCaptionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCaption(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;
.end method

.method public abstract isSetAutoCaptions()Z
.end method

.method public abstract removeCaption(I)V
.end method

.method public abstract setAutoCaptions(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAutoCaptions;)V
.end method

.method public abstract setCaptionArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;)V
.end method

.method public abstract setCaptionArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCaption;)V
.end method

.method public abstract sizeOfCaptionArray()I
.end method

.method public abstract unsetAutoCaptions()V
.end method
