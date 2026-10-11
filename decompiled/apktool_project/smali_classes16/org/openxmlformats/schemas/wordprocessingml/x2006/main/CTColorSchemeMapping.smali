.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColorSchemeMapping;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColorSchemeMapping;",
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

    const-string v2, "ctcolorschememapping8722type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColorSchemeMapping;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColorSchemeMapping;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAccent1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getAccent2()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getAccent3()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getAccent4()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getAccent5()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getAccent6()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getBg1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getBg2()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getFollowedHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getT1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract getT2()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
.end method

.method public abstract isSetAccent1()Z
.end method

.method public abstract isSetAccent2()Z
.end method

.method public abstract isSetAccent3()Z
.end method

.method public abstract isSetAccent4()Z
.end method

.method public abstract isSetAccent5()Z
.end method

.method public abstract isSetAccent6()Z
.end method

.method public abstract isSetBg1()Z
.end method

.method public abstract isSetBg2()Z
.end method

.method public abstract isSetFollowedHyperlink()Z
.end method

.method public abstract isSetHyperlink()Z
.end method

.method public abstract isSetT1()Z
.end method

.method public abstract isSetT2()Z
.end method

.method public abstract setAccent1(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent2(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent3(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent4(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent5(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setAccent6(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg1(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setBg2(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setFollowedHyperlink(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setHyperlink(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setT1(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract setT2(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;)V
.end method

.method public abstract unsetAccent1()V
.end method

.method public abstract unsetAccent2()V
.end method

.method public abstract unsetAccent3()V
.end method

.method public abstract unsetAccent4()V
.end method

.method public abstract unsetAccent5()V
.end method

.method public abstract unsetAccent6()V
.end method

.method public abstract unsetBg1()V
.end method

.method public abstract unsetBg2()V
.end method

.method public abstract unsetFollowedHyperlink()V
.end method

.method public abstract unsetHyperlink()V
.end method

.method public abstract unsetT1()V
.end method

.method public abstract unsetT2()V
.end method

.method public abstract xgetAccent1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetAccent2()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetAccent3()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetAccent4()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetAccent5()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetAccent6()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetBg1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetBg2()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetFollowedHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetHyperlink()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetT1()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xgetT2()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.end method

.method public abstract xsetAccent1(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetAccent2(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetAccent3(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetAccent4(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetAccent5(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetAccent6(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetBg1(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetBg2(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetFollowedHyperlink(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetHyperlink(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetT1(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method

.method public abstract xsetT2(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;)V
.end method
