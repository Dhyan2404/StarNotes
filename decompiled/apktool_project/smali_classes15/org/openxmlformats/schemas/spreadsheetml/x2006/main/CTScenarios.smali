.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenarios;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenarios;",
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

    const-string v2, "ctscenariosacc2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenarios;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenarios;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewScenario()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;
.end method

.method public abstract getCurrent()J
.end method

.method public abstract getScenarioArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;
.end method

.method public abstract getScenarioArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;
.end method

.method public abstract getScenarioList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShow()J
.end method

.method public abstract getSqref()Ljava/util/List;
.end method

.method public abstract insertNewScenario(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;
.end method

.method public abstract isSetCurrent()Z
.end method

.method public abstract isSetShow()Z
.end method

.method public abstract isSetSqref()Z
.end method

.method public abstract removeScenario(I)V
.end method

.method public abstract setCurrent(J)V
.end method

.method public abstract setScenarioArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;)V
.end method

.method public abstract setScenarioArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTScenario;)V
.end method

.method public abstract setShow(J)V
.end method

.method public abstract setSqref(Ljava/util/List;)V
.end method

.method public abstract sizeOfScenarioArray()I
.end method

.method public abstract unsetCurrent()V
.end method

.method public abstract unsetShow()V
.end method

.method public abstract unsetSqref()V
.end method

.method public abstract xgetCurrent()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSqref()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;
.end method

.method public abstract xsetCurrent(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSqref(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSqref;)V
.end method
