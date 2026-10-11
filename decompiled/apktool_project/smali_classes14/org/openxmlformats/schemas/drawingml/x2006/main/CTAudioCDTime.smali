.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCDTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCDTime;",
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

    const-string v2, "ctaudiocdtime68d5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCDTime;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTAudioCDTime;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getTime()J
.end method

.method public abstract getTrack()S
.end method

.method public abstract isSetTime()Z
.end method

.method public abstract setTime(J)V
.end method

.method public abstract setTrack(S)V
.end method

.method public abstract unsetTime()V
.end method

.method public abstract xgetTime()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetTrack()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xsetTime(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetTrack(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method
