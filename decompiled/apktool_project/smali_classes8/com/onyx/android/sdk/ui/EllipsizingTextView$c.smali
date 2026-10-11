.class public final Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;
.super Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/EllipsizingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/EllipsizingTextView$c;->b:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/EllipsizingTextView$e;-><init>(Lcom/onyx/android/sdk/ui/EllipsizingTextView;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "fullText"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
