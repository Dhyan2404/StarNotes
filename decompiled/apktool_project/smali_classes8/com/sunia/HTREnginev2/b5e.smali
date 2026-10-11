.class public final synthetic Lcom/sunia/HTREnginev2/b5e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b5e;->a:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b5e;->a:Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->c(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
