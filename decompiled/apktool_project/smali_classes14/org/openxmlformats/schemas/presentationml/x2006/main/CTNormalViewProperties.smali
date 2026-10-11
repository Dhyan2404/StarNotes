.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewProperties;",
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

    const-string v2, "ctnormalviewproperties8546type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewRestoredLeft()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;
.end method

.method public abstract addNewRestoredTop()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getHorzBarState()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState$Enum;
.end method

.method public abstract getPreferSingleView()Z
.end method

.method public abstract getRestoredLeft()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;
.end method

.method public abstract getRestoredTop()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;
.end method

.method public abstract getShowOutlineIcons()Z
.end method

.method public abstract getSnapVertSplitter()Z
.end method

.method public abstract getVertBarState()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState$Enum;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHorzBarState()Z
.end method

.method public abstract isSetPreferSingleView()Z
.end method

.method public abstract isSetShowOutlineIcons()Z
.end method

.method public abstract isSetSnapVertSplitter()Z
.end method

.method public abstract isSetVertBarState()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHorzBarState(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState$Enum;)V
.end method

.method public abstract setPreferSingleView(Z)V
.end method

.method public abstract setRestoredLeft(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;)V
.end method

.method public abstract setRestoredTop(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTNormalViewPortion;)V
.end method

.method public abstract setShowOutlineIcons(Z)V
.end method

.method public abstract setSnapVertSplitter(Z)V
.end method

.method public abstract setVertBarState(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState$Enum;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHorzBarState()V
.end method

.method public abstract unsetPreferSingleView()V
.end method

.method public abstract unsetShowOutlineIcons()V
.end method

.method public abstract unsetSnapVertSplitter()V
.end method

.method public abstract unsetVertBarState()V
.end method

.method public abstract xgetHorzBarState()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState;
.end method

.method public abstract xgetPreferSingleView()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowOutlineIcons()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSnapVertSplitter()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVertBarState()Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState;
.end method

.method public abstract xsetHorzBarState(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState;)V
.end method

.method public abstract xsetPreferSingleView(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowOutlineIcons(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSnapVertSplitter(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVertBarState(Lorg/openxmlformats/schemas/presentationml/x2006/main/STSplitterBarState;)V
.end method
