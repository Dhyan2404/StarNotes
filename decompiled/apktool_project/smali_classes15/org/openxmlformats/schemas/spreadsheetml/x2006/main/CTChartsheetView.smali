.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetView;",
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

    const-string v2, "ctchartsheetview720ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetView;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartsheetView;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getTabSelected()Z
.end method

.method public abstract getWorkbookViewId()J
.end method

.method public abstract getZoomScale()J
.end method

.method public abstract getZoomToFit()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetTabSelected()Z
.end method

.method public abstract isSetZoomScale()Z
.end method

.method public abstract isSetZoomToFit()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setTabSelected(Z)V
.end method

.method public abstract setWorkbookViewId(J)V
.end method

.method public abstract setZoomScale(J)V
.end method

.method public abstract setZoomToFit(Z)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetTabSelected()V
.end method

.method public abstract unsetZoomScale()V
.end method

.method public abstract unsetZoomToFit()V
.end method

.method public abstract xgetTabSelected()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetWorkbookViewId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetZoomScale()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetZoomToFit()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetTabSelected(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetWorkbookViewId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetZoomScale(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetZoomToFit(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
