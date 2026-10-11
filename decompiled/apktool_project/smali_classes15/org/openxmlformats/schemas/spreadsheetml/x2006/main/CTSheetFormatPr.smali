.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;",
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

    const-string v2, "ctsheetformatprdef7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getBaseColWidth()J
.end method

.method public abstract getCustomHeight()Z
.end method

.method public abstract getDefaultColWidth()D
.end method

.method public abstract getDefaultRowHeight()D
.end method

.method public abstract getOutlineLevelCol()S
.end method

.method public abstract getOutlineLevelRow()S
.end method

.method public abstract getThickBottom()Z
.end method

.method public abstract getThickTop()Z
.end method

.method public abstract getZeroHeight()Z
.end method

.method public abstract isSetBaseColWidth()Z
.end method

.method public abstract isSetCustomHeight()Z
.end method

.method public abstract isSetDefaultColWidth()Z
.end method

.method public abstract isSetOutlineLevelCol()Z
.end method

.method public abstract isSetOutlineLevelRow()Z
.end method

.method public abstract isSetThickBottom()Z
.end method

.method public abstract isSetThickTop()Z
.end method

.method public abstract isSetZeroHeight()Z
.end method

.method public abstract setBaseColWidth(J)V
.end method

.method public abstract setCustomHeight(Z)V
.end method

.method public abstract setDefaultColWidth(D)V
.end method

.method public abstract setDefaultRowHeight(D)V
.end method

.method public abstract setOutlineLevelCol(S)V
.end method

.method public abstract setOutlineLevelRow(S)V
.end method

.method public abstract setThickBottom(Z)V
.end method

.method public abstract setThickTop(Z)V
.end method

.method public abstract setZeroHeight(Z)V
.end method

.method public abstract unsetBaseColWidth()V
.end method

.method public abstract unsetCustomHeight()V
.end method

.method public abstract unsetDefaultColWidth()V
.end method

.method public abstract unsetOutlineLevelCol()V
.end method

.method public abstract unsetOutlineLevelRow()V
.end method

.method public abstract unsetThickBottom()V
.end method

.method public abstract unsetThickTop()V
.end method

.method public abstract unsetZeroHeight()V
.end method

.method public abstract xgetBaseColWidth()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCustomHeight()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDefaultColWidth()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetDefaultRowHeight()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetOutlineLevelCol()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetOutlineLevelRow()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetThickBottom()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetThickTop()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetZeroHeight()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetBaseColWidth(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCustomHeight(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDefaultColWidth(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetDefaultRowHeight(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetOutlineLevelCol(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetOutlineLevelRow(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetThickBottom(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetThickTop(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetZeroHeight(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
