.class public interface abstract Lorg/apache/poi/convert/xwpf/property/IRunPropertyFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/xwpf/property/BordersFetcher;


# virtual methods
.method public abstract getCTLang()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTLanguage;
.end method

.method public abstract getCharacterSpacing()Lorg/apache/poi/style/UnitValue;
.end method

.method public abstract getColor()Ljava/lang/String;
.end method

.method public abstract getEm()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEm;
.end method

.method public abstract getEmphasisMark()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STEm$Enum;
.end method

.method public abstract getFontFamily(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Ljava/lang/String;
.end method

.method public abstract getFontSize(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)Lorg/apache/poi/style/UnitValue;
.end method

.method public abstract getKerning()Ljava/lang/Integer;
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
.end method

.method public abstract getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getSzCs()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
.end method

.method public abstract getTextHighlightColor()Ljava/lang/String;
.end method

.method public abstract getTextScale()Lorg/apache/poi/style/UnitValue;
.end method

.method public getThemeColor(Ljava/lang/String;)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getUnderline()Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
.end method

.method public abstract getUnderlineColor()Ljava/lang/String;
.end method

.method public abstract getUnderlineThemeColorEnum()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STThemeColor$Enum;
.end method

.method public abstract getVerticalAlignment()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STVerticalAlignRun$Enum;
.end method

.method public abstract isBold()Ljava/lang/Boolean;
.end method

.method public abstract isCapitalized()Ljava/lang/Boolean;
.end method

.method public abstract isDoubleStrikeThrough()Ljava/lang/Boolean;
.end method

.method public abstract isEmbossed()Ljava/lang/Boolean;
.end method

.method public abstract isHighlighted()Ljava/lang/Boolean;
.end method

.method public abstract isImprinted()Ljava/lang/Boolean;
.end method

.method public abstract isItalic()Ljava/lang/Boolean;
.end method

.method public abstract isShadowed()Ljava/lang/Boolean;
.end method

.method public abstract isSmallCaps()Ljava/lang/Boolean;
.end method

.method public abstract isStrikeThrough()Ljava/lang/Boolean;
.end method

.method public abstract isVanish()Ljava/lang/Boolean;
.end method
