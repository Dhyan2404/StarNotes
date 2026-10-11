.class public interface abstract Lsun/font/FontManagerForSGE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/font/FontManager;


# virtual methods
.method public abstract getAllInstalledFonts()[Ljava/awt/Font;
.end method

.method public abstract getCreatedFontFamilyNames()Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCreatedFonts()[Ljava/awt/Font;
.end method

.method public abstract getInstalledFontFamilyNames(Ljava/util/Locale;)[Ljava/lang/String;
.end method

.method public abstract useAlternateFontforJALocales()V
.end method
