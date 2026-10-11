.class public abstract Lsun/font/TextSource;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WITHOUT_CONTEXT:Z = false

.field public static final WITH_CONTEXT:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBidiLevel()I
.end method

.method public abstract getChars()[C
.end method

.method public abstract getContextLength()I
.end method

.method public abstract getContextStart()I
.end method

.method public abstract getCoreMetrics()Lsun/font/CoreMetrics;
.end method

.method public abstract getFRC()Ljava/awt/font/FontRenderContext;
.end method

.method public abstract getFont()Ljava/awt/Font;
.end method

.method public abstract getLayoutFlags()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getStart()I
.end method

.method public abstract getSubSource(III)Lsun/font/TextSource;
.end method

.method public abstract toString(Z)Ljava/lang/String;
.end method
