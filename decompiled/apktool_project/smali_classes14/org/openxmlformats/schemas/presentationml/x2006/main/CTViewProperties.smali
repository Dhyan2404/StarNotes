.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTViewProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTViewProperties;",
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

    const-string v2, "ctviewpropertiesdeadtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTViewProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTViewProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewGridSpacing()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract addNewNormalViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewProperties;
.end method

.method public abstract addNewNotesTextViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesTextViewProperties;
.end method

.method public abstract addNewNotesViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesViewProperties;
.end method

.method public abstract addNewOutlineViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOutlineViewProperties;
.end method

.method public abstract addNewSlideViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideViewProperties;
.end method

.method public abstract addNewSorterViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSorterViewProperties;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getGridSpacing()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
.end method

.method public abstract getLastView()Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;
.end method

.method public abstract getNormalViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewProperties;
.end method

.method public abstract getNotesTextViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesTextViewProperties;
.end method

.method public abstract getNotesViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesViewProperties;
.end method

.method public abstract getOutlineViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOutlineViewProperties;
.end method

.method public abstract getShowComments()Z
.end method

.method public abstract getSlideViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideViewProperties;
.end method

.method public abstract getSorterViewPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSorterViewProperties;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGridSpacing()Z
.end method

.method public abstract isSetLastView()Z
.end method

.method public abstract isSetNormalViewPr()Z
.end method

.method public abstract isSetNotesTextViewPr()Z
.end method

.method public abstract isSetNotesViewPr()Z
.end method

.method public abstract isSetOutlineViewPr()Z
.end method

.method public abstract isSetShowComments()Z
.end method

.method public abstract isSetSlideViewPr()Z
.end method

.method public abstract isSetSorterViewPr()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setGridSpacing(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;)V
.end method

.method public abstract setLastView(Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType$Enum;)V
.end method

.method public abstract setNormalViewPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewProperties;)V
.end method

.method public abstract setNotesTextViewPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesTextViewProperties;)V
.end method

.method public abstract setNotesViewPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNotesViewProperties;)V
.end method

.method public abstract setOutlineViewPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOutlineViewProperties;)V
.end method

.method public abstract setShowComments(Z)V
.end method

.method public abstract setSlideViewPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideViewProperties;)V
.end method

.method public abstract setSorterViewPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideSorterViewProperties;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGridSpacing()V
.end method

.method public abstract unsetLastView()V
.end method

.method public abstract unsetNormalViewPr()V
.end method

.method public abstract unsetNotesTextViewPr()V
.end method

.method public abstract unsetNotesViewPr()V
.end method

.method public abstract unsetOutlineViewPr()V
.end method

.method public abstract unsetShowComments()V
.end method

.method public abstract unsetSlideViewPr()V
.end method

.method public abstract unsetSorterViewPr()V
.end method

.method public abstract xgetLastView()Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;
.end method

.method public abstract xgetShowComments()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetLastView(Lorg/openxmlformats/schemas/presentationml/x2006/main/STViewType;)V
.end method

.method public abstract xsetShowComments(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
