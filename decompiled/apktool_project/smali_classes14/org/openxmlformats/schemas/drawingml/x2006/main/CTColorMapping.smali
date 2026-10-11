.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;",
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

    const-string v2, "ctcolormapping5bc6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMapping;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;
.end method

.method public abstract getFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract getTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setAccent1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent3(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent4(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent5(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent6(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTOfficeArtExtensionList;)V
.end method

.method public abstract setFolHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setTx1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract setTx2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex$Enum;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetAccent1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent3()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent4()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent5()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetAccent6()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetBg1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetBg2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetFolHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetHlink()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetTx1()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xgetTx2()Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;
.end method

.method public abstract xsetAccent1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent3(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent4(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent5(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetAccent6(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetBg1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetBg2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetFolHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetHlink(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetTx1(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method

.method public abstract xsetTx2(Lorg/openxmlformats/schemas/drawingml/x2006/main/STColorSchemeIndex;)V
.end method
