.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;",
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

    const-string v2, "ctbreak815etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTBreak;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getId()J
.end method

.method public abstract getMan()Z
.end method

.method public abstract getMax()J
.end method

.method public abstract getMin()J
.end method

.method public abstract getPt()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetMan()Z
.end method

.method public abstract isSetMax()Z
.end method

.method public abstract isSetMin()Z
.end method

.method public abstract isSetPt()Z
.end method

.method public abstract setId(J)V
.end method

.method public abstract setMan(Z)V
.end method

.method public abstract setMax(J)V
.end method

.method public abstract setMin(J)V
.end method

.method public abstract setPt(Z)V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetMan()V
.end method

.method public abstract unsetMax()V
.end method

.method public abstract unsetMin()V
.end method

.method public abstract unsetPt()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMan()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMax()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMin()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPt()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMan(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMax(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMin(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPt(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
