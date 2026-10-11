.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;",
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

    const-string v2, "cttblwidthec40type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblWidth;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;
.end method

.method public abstract getW()Ljava/lang/Object;
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetW()Z
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth$Enum;)V
.end method

.method public abstract setW(Ljava/lang/Object;)V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetW()V
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;
.end method

.method public abstract xgetW()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTblWidth;)V
.end method

.method public abstract xsetW(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STMeasurementOrPercent;)V
.end method
