.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPI;",
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

    const-string v2, "ctpcdkpi3f5ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPI;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPI;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getDisplayFolder()Ljava/lang/String;
.end method

.method public abstract getGoal()Ljava/lang/String;
.end method

.method public abstract getMeasureGroup()Ljava/lang/String;
.end method

.method public abstract getParent()Ljava/lang/String;
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract getTime()Ljava/lang/String;
.end method

.method public abstract getTrend()Ljava/lang/String;
.end method

.method public abstract getUniqueName()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract getWeight()Ljava/lang/String;
.end method

.method public abstract isSetCaption()Z
.end method

.method public abstract isSetDisplayFolder()Z
.end method

.method public abstract isSetGoal()Z
.end method

.method public abstract isSetMeasureGroup()Z
.end method

.method public abstract isSetParent()Z
.end method

.method public abstract isSetStatus()Z
.end method

.method public abstract isSetTime()Z
.end method

.method public abstract isSetTrend()Z
.end method

.method public abstract isSetWeight()Z
.end method

.method public abstract setCaption(Ljava/lang/String;)V
.end method

.method public abstract setDisplayFolder(Ljava/lang/String;)V
.end method

.method public abstract setGoal(Ljava/lang/String;)V
.end method

.method public abstract setMeasureGroup(Ljava/lang/String;)V
.end method

.method public abstract setParent(Ljava/lang/String;)V
.end method

.method public abstract setStatus(Ljava/lang/String;)V
.end method

.method public abstract setTime(Ljava/lang/String;)V
.end method

.method public abstract setTrend(Ljava/lang/String;)V
.end method

.method public abstract setUniqueName(Ljava/lang/String;)V
.end method

.method public abstract setValue(Ljava/lang/String;)V
.end method

.method public abstract setWeight(Ljava/lang/String;)V
.end method

.method public abstract unsetCaption()V
.end method

.method public abstract unsetDisplayFolder()V
.end method

.method public abstract unsetGoal()V
.end method

.method public abstract unsetMeasureGroup()V
.end method

.method public abstract unsetParent()V
.end method

.method public abstract unsetStatus()V
.end method

.method public abstract unsetTime()V
.end method

.method public abstract unsetTrend()V
.end method

.method public abstract unsetWeight()V
.end method

.method public abstract xgetCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDisplayFolder()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetGoal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetMeasureGroup()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetParent()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetStatus()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetTime()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetTrend()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetUniqueName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetValue()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetWeight()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDisplayFolder(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetGoal(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetMeasureGroup(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetParent(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetStatus(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetTime(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetTrend(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetUniqueName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetValue(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetWeight(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
