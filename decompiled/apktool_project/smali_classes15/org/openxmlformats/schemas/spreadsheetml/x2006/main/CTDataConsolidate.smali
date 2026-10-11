.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;",
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

    const-string v2, "ctdataconsolidate941etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataConsolidate;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDataRefs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataRefs;
.end method

.method public abstract getDataRefs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataRefs;
.end method

.method public abstract getFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;
.end method

.method public abstract getLeftLabels()Z
.end method

.method public abstract getLink()Z
.end method

.method public abstract getStartLabels()Z
.end method

.method public abstract getTopLabels()Z
.end method

.method public abstract isSetDataRefs()Z
.end method

.method public abstract isSetFunction()Z
.end method

.method public abstract isSetLeftLabels()Z
.end method

.method public abstract isSetLink()Z
.end method

.method public abstract isSetStartLabels()Z
.end method

.method public abstract isSetTopLabels()Z
.end method

.method public abstract setDataRefs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataRefs;)V
.end method

.method public abstract setFunction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;)V
.end method

.method public abstract setLeftLabels(Z)V
.end method

.method public abstract setLink(Z)V
.end method

.method public abstract setStartLabels(Z)V
.end method

.method public abstract setTopLabels(Z)V
.end method

.method public abstract unsetDataRefs()V
.end method

.method public abstract unsetFunction()V
.end method

.method public abstract unsetLeftLabels()V
.end method

.method public abstract unsetLink()V
.end method

.method public abstract unsetStartLabels()V
.end method

.method public abstract unsetTopLabels()V
.end method

.method public abstract xgetFunction()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;
.end method

.method public abstract xgetLeftLabels()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetLink()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStartLabels()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTopLabels()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetFunction(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;)V
.end method

.method public abstract xsetLeftLabels(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetLink(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStartLabels(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTopLabels(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
