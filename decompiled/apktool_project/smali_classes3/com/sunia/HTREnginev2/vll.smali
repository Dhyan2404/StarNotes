.class public final synthetic Lcom/sunia/HTREnginev2/vll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/core/content/res/ResourcesCompat$FontCallback;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vll;->e:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iput p2, p0, Lcom/sunia/HTREnginev2/vll;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vll;->e:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    iget p0, p0, Lcom/sunia/HTREnginev2/vll;->f:I

    invoke-static {v0, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(Landroidx/core/content/res/ResourcesCompat$FontCallback;I)V

    return-void
.end method
