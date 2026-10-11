.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;",
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

    const-string v2, "ctprintoptions943atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPrintOptions;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getGridLines()Z
.end method

.method public abstract getGridLinesSet()Z
.end method

.method public abstract getHeadings()Z
.end method

.method public abstract getHorizontalCentered()Z
.end method

.method public abstract getVerticalCentered()Z
.end method

.method public abstract isSetGridLines()Z
.end method

.method public abstract isSetGridLinesSet()Z
.end method

.method public abstract isSetHeadings()Z
.end method

.method public abstract isSetHorizontalCentered()Z
.end method

.method public abstract isSetVerticalCentered()Z
.end method

.method public abstract setGridLines(Z)V
.end method

.method public abstract setGridLinesSet(Z)V
.end method

.method public abstract setHeadings(Z)V
.end method

.method public abstract setHorizontalCentered(Z)V
.end method

.method public abstract setVerticalCentered(Z)V
.end method

.method public abstract unsetGridLines()V
.end method

.method public abstract unsetGridLinesSet()V
.end method

.method public abstract unsetHeadings()V
.end method

.method public abstract unsetHorizontalCentered()V
.end method

.method public abstract unsetVerticalCentered()V
.end method

.method public abstract xgetGridLines()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGridLinesSet()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHeadings()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHorizontalCentered()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVerticalCentered()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetGridLines(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGridLinesSet(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHeadings(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHorizontalCentered(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVerticalCentered(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
