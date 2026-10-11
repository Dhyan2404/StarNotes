.class public final synthetic Lcom/sunia/HTREnginev2/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/appcompat/app/AppCompatDelegate$c;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AppCompatDelegate$c;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fc;->e:Landroidx/appcompat/app/AppCompatDelegate$c;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fc;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fc;->e:Landroidx/appcompat/app/AppCompatDelegate$c;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fc;->f:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/appcompat/app/AppCompatDelegate$c;->a(Landroidx/appcompat/app/AppCompatDelegate$c;Ljava/lang/Runnable;)V

    return-void
.end method
