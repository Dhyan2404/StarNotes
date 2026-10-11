.class public final Lcom/sunia/HTREnginev2/q5f$d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/q5f$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/sunia/HTREnginev2/h5n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lcom/sunia/HTREnginev2/h5n;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/q5f$d$c;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/sunia/HTREnginev2/q5f$d$c;->b:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;Lcom/sunia/HTREnginev2/q5f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/q5f$d$c;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/q5f$d$c;)Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q5f$d$c;->b:Ljava/util/Iterator;

    return-object p0
.end method

.method public static synthetic b(Lcom/sunia/HTREnginev2/q5f$d$c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q5f$d$c;->a:Ljava/lang/Object;

    return-object p0
.end method
