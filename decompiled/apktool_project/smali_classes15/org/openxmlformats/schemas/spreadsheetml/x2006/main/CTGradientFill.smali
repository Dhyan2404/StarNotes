.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientFill;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientFill;",
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

    const-string v2, "ctgradientfillaf5ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientFill;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientFill;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewStop()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientStop;
.end method

.method public abstract getBottom()D
.end method

.method public abstract getDegree()D
.end method

.method public abstract getLeft()D
.end method

.method public abstract getRight()D
.end method

.method public abstract getStopArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientStop;
.end method

.method public abstract getStopArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientStop;
.end method

.method public abstract getStopList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientStop;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTop()D
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGradientType$Enum;
.end method

.method public abstract insertNewStop(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientStop;
.end method

.method public abstract isSetBottom()Z
.end method

.method public abstract isSetDegree()Z
.end method

.method public abstract isSetLeft()Z
.end method

.method public abstract isSetRight()Z
.end method

.method public abstract isSetTop()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract removeStop(I)V
.end method

.method public abstract setBottom(D)V
.end method

.method public abstract setDegree(D)V
.end method

.method public abstract setLeft(D)V
.end method

.method public abstract setRight(D)V
.end method

.method public abstract setStopArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientStop;)V
.end method

.method public abstract setStopArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGradientStop;)V
.end method

.method public abstract setTop(D)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGradientType$Enum;)V
.end method

.method public abstract sizeOfStopArray()I
.end method

.method public abstract unsetBottom()V
.end method

.method public abstract unsetDegree()V
.end method

.method public abstract unsetLeft()V
.end method

.method public abstract unsetRight()V
.end method

.method public abstract unsetTop()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetBottom()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetDegree()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetLeft()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetRight()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetTop()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGradientType;
.end method

.method public abstract xsetBottom(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetDegree(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetLeft(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetRight(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetTop(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STGradientType;)V
.end method
