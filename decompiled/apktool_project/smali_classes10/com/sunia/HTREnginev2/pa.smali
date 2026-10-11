.class public final synthetic Lcom/sunia/HTREnginev2/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/backport/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {p1}, Lcom/trans/android/AndroidGraphics2D;->H(Ljava/text/AttributedCharacterIterator$Attribute;)Z

    move-result p0

    return p0
.end method
