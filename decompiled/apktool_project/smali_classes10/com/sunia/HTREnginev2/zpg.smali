.class public final synthetic Lcom/sunia/HTREnginev2/zpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    check-cast p2, Lcom/onyx/harfbuzz/graphics/HBTypeface;

    invoke-static {p1, p2}, Lcom/trans/android/font/FontHandler;->b(Lcom/onyx/harfbuzz/graphics/HBTypeface;Lcom/onyx/harfbuzz/graphics/HBTypeface;)I

    move-result p0

    return p0
.end method
