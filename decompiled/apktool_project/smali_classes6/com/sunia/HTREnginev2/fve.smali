.class public final synthetic Lcom/sunia/HTREnginev2/fve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/material/datepicker/a;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/datepicker/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fve;->e:Lcom/google/android/material/datepicker/a;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fve;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fve;->e:Lcom/google/android/material/datepicker/a;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fve;->f:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/a;->a(Lcom/google/android/material/datepicker/a;Ljava/lang/String;)V

    return-void
.end method
