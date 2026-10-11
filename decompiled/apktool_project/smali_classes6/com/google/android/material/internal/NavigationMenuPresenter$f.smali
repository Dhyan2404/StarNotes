.class public Lcom/google/android/material/internal/NavigationMenuPresenter$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/NavigationMenuPresenter$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->a:I

    iput p2, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->b:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/NavigationMenuPresenter$f;->a:I

    return p0
.end method
