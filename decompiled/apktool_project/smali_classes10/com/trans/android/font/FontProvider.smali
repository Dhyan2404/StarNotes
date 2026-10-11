.class public interface abstract Lcom/trans/android/font/FontProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDefTypefaces()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onyx/harfbuzz/graphics/HBTypeface;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getDefaultFont()[Ljava/lang/String;
.end method

.method public abstract getFontPath()Ljava/lang/String;
.end method

.method public abstract getHBTypeface(Ljava/lang/String;)Lcom/onyx/harfbuzz/graphics/HBTypeface;
.end method

.method public abstract getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
.end method

.method public abstract release()V
.end method
