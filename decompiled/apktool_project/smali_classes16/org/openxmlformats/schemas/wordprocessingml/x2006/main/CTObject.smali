.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;",
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

    const-string v2, "ctobject47c9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObject;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewControl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTControl;
.end method

.method public abstract addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract addNewMovie()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract addNewObjectEmbed()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;
.end method

.method public abstract addNewObjectLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectLink;
.end method

.method public abstract getControl()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTControl;
.end method

.method public abstract getDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
.end method

.method public abstract getDxaOrig()Ljava/lang/Object;
.end method

.method public abstract getDyaOrig()Ljava/lang/Object;
.end method

.method public abstract getMovie()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;
.end method

.method public abstract getObjectEmbed()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;
.end method

.method public abstract getObjectLink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectLink;
.end method

.method public abstract isSetControl()Z
.end method

.method public abstract isSetDrawing()Z
.end method

.method public abstract isSetDxaOrig()Z
.end method

.method public abstract isSetDyaOrig()Z
.end method

.method public abstract isSetMovie()Z
.end method

.method public abstract isSetObjectEmbed()Z
.end method

.method public abstract isSetObjectLink()Z
.end method

.method public abstract setControl(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTControl;)V
.end method

.method public abstract setDrawing(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;)V
.end method

.method public abstract setDxaOrig(Ljava/lang/Object;)V
.end method

.method public abstract setDyaOrig(Ljava/lang/Object;)V
.end method

.method public abstract setMovie(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRel;)V
.end method

.method public abstract setObjectEmbed(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectEmbed;)V
.end method

.method public abstract setObjectLink(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTObjectLink;)V
.end method

.method public abstract unsetControl()V
.end method

.method public abstract unsetDrawing()V
.end method

.method public abstract unsetDxaOrig()V
.end method

.method public abstract unsetDyaOrig()V
.end method

.method public abstract unsetMovie()V
.end method

.method public abstract unsetObjectEmbed()V
.end method

.method public abstract unsetObjectLink()V
.end method

.method public abstract xgetDxaOrig()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xgetDyaOrig()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;
.end method

.method public abstract xsetDxaOrig(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method

.method public abstract xsetDyaOrig(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTwipsMeasure;)V
.end method
