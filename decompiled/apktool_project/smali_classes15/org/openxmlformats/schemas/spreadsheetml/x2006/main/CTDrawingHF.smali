.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;",
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

    const-string v2, "ctdrawinghfd23btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDrawingHF;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCfe()J
.end method

.method public abstract getCff()J
.end method

.method public abstract getCfo()J
.end method

.method public abstract getChe()J
.end method

.method public abstract getChf()J
.end method

.method public abstract getCho()J
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getLfe()J
.end method

.method public abstract getLff()J
.end method

.method public abstract getLfo()J
.end method

.method public abstract getLhe()J
.end method

.method public abstract getLhf()J
.end method

.method public abstract getLho()J
.end method

.method public abstract getRfe()J
.end method

.method public abstract getRff()J
.end method

.method public abstract getRfo()J
.end method

.method public abstract getRhe()J
.end method

.method public abstract getRhf()J
.end method

.method public abstract getRho()J
.end method

.method public abstract isSetCfe()Z
.end method

.method public abstract isSetCff()Z
.end method

.method public abstract isSetCfo()Z
.end method

.method public abstract isSetChe()Z
.end method

.method public abstract isSetChf()Z
.end method

.method public abstract isSetCho()Z
.end method

.method public abstract isSetLfe()Z
.end method

.method public abstract isSetLff()Z
.end method

.method public abstract isSetLfo()Z
.end method

.method public abstract isSetLhe()Z
.end method

.method public abstract isSetLhf()Z
.end method

.method public abstract isSetLho()Z
.end method

.method public abstract isSetRfe()Z
.end method

.method public abstract isSetRff()Z
.end method

.method public abstract isSetRfo()Z
.end method

.method public abstract isSetRhe()Z
.end method

.method public abstract isSetRhf()Z
.end method

.method public abstract isSetRho()Z
.end method

.method public abstract setCfe(J)V
.end method

.method public abstract setCff(J)V
.end method

.method public abstract setCfo(J)V
.end method

.method public abstract setChe(J)V
.end method

.method public abstract setChf(J)V
.end method

.method public abstract setCho(J)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setLfe(J)V
.end method

.method public abstract setLff(J)V
.end method

.method public abstract setLfo(J)V
.end method

.method public abstract setLhe(J)V
.end method

.method public abstract setLhf(J)V
.end method

.method public abstract setLho(J)V
.end method

.method public abstract setRfe(J)V
.end method

.method public abstract setRff(J)V
.end method

.method public abstract setRfo(J)V
.end method

.method public abstract setRhe(J)V
.end method

.method public abstract setRhf(J)V
.end method

.method public abstract setRho(J)V
.end method

.method public abstract unsetCfe()V
.end method

.method public abstract unsetCff()V
.end method

.method public abstract unsetCfo()V
.end method

.method public abstract unsetChe()V
.end method

.method public abstract unsetChf()V
.end method

.method public abstract unsetCho()V
.end method

.method public abstract unsetLfe()V
.end method

.method public abstract unsetLff()V
.end method

.method public abstract unsetLfo()V
.end method

.method public abstract unsetLhe()V
.end method

.method public abstract unsetLhf()V
.end method

.method public abstract unsetLho()V
.end method

.method public abstract unsetRfe()V
.end method

.method public abstract unsetRff()V
.end method

.method public abstract unsetRfo()V
.end method

.method public abstract unsetRhe()V
.end method

.method public abstract unsetRhf()V
.end method

.method public abstract unsetRho()V
.end method

.method public abstract xgetCfe()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCff()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCfo()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetChe()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetChf()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCho()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetLfe()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLff()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLfo()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLhe()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLhf()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLho()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRfe()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRff()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRfo()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRhe()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRhf()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRho()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCfe(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCff(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCfo(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetChe(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetChf(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCho(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetLfe(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLff(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLfo(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLhe(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLhf(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLho(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRfe(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRff(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRfo(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRhe(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRhf(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRho(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
