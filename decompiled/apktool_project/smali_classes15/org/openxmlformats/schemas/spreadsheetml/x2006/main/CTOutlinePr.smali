.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;",
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

    const-string v2, "ctoutlineprc483type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getApplyStyles()Z
.end method

.method public abstract getShowOutlineSymbols()Z
.end method

.method public abstract getSummaryBelow()Z
.end method

.method public abstract getSummaryRight()Z
.end method

.method public abstract isSetApplyStyles()Z
.end method

.method public abstract isSetShowOutlineSymbols()Z
.end method

.method public abstract isSetSummaryBelow()Z
.end method

.method public abstract isSetSummaryRight()Z
.end method

.method public abstract setApplyStyles(Z)V
.end method

.method public abstract setShowOutlineSymbols(Z)V
.end method

.method public abstract setSummaryBelow(Z)V
.end method

.method public abstract setSummaryRight(Z)V
.end method

.method public abstract unsetApplyStyles()V
.end method

.method public abstract unsetShowOutlineSymbols()V
.end method

.method public abstract unsetSummaryBelow()V
.end method

.method public abstract unsetSummaryRight()V
.end method

.method public abstract xgetApplyStyles()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowOutlineSymbols()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSummaryBelow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSummaryRight()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetApplyStyles(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowOutlineSymbols(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSummaryBelow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSummaryRight(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
