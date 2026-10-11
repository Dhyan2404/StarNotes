.class public interface abstract Lsun/font/FontManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOGICAL_FALLBACK:I = 0x2

.field public static final NO_FALLBACK:I = 0x0

.field public static final PHYSICAL_FALLBACK:I = 0x1


# virtual methods
.method public abstract createFont2D(Ljava/io/File;IZLsun/font/CreatedFontTracker;)Lsun/font/Font2D;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation
.end method

.method public abstract deRegisterBadFont(Lsun/font/Font2D;)V
.end method

.method public abstract findFont2D(Ljava/lang/String;II)Lsun/font/Font2D;
.end method

.method public abstract getNewComposite(Ljava/lang/String;ILsun/font/Font2DHandle;)Lsun/font/Font2DHandle;
.end method

.method public abstract preferLocaleFonts()V
.end method

.method public abstract preferProportionalFonts()V
.end method

.method public abstract registerFont(Ljava/awt/Font;)Z
.end method

.method public abstract usingPerAppContextComposites()Z
.end method
