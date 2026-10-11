.class public final synthetic Lcom/sunia/HTREnginev2/jxn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BooleanSupplier;


# instance fields
.field public final synthetic e:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jxn;->e:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jxn;->e:Ljava/util/Iterator;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->l(Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method
