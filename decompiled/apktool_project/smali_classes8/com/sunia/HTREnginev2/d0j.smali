.class public final synthetic Lcom/sunia/HTREnginev2/d0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-static {p1}, Lcom/onyx/android/sdk/textbox/action/LoadRichTextFontAction;->l(Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
