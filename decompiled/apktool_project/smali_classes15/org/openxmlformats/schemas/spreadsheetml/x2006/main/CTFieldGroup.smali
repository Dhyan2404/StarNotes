.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;",
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

    const-string v2, "ctfieldgroupe2eetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldGroup;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDiscretePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDiscretePr;
.end method

.method public abstract addNewGroupItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupItems;
.end method

.method public abstract addNewRangePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangePr;
.end method

.method public abstract getBase()J
.end method

.method public abstract getDiscretePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDiscretePr;
.end method

.method public abstract getGroupItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupItems;
.end method

.method public abstract getPar()J
.end method

.method public abstract getRangePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangePr;
.end method

.method public abstract isSetBase()Z
.end method

.method public abstract isSetDiscretePr()Z
.end method

.method public abstract isSetGroupItems()Z
.end method

.method public abstract isSetPar()Z
.end method

.method public abstract isSetRangePr()Z
.end method

.method public abstract setBase(J)V
.end method

.method public abstract setDiscretePr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDiscretePr;)V
.end method

.method public abstract setGroupItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupItems;)V
.end method

.method public abstract setPar(J)V
.end method

.method public abstract setRangePr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangePr;)V
.end method

.method public abstract unsetBase()V
.end method

.method public abstract unsetDiscretePr()V
.end method

.method public abstract unsetGroupItems()V
.end method

.method public abstract unsetPar()V
.end method

.method public abstract unsetRangePr()V
.end method

.method public abstract xgetBase()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPar()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetBase(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPar(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
