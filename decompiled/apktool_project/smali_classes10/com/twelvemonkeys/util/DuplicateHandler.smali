.class public interface abstract Lcom/twelvemonkeys/util/DuplicateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DUPLICATES_AS_ARRAY:Lcom/twelvemonkeys/util/DuplicateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/DuplicateHandler<",
            "*>;"
        }
    .end annotation
.end field

.field public static final DUPLICATES_AS_CSV:Lcom/twelvemonkeys/util/DuplicateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/DuplicateHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_FIRST_VALUE:Lcom/twelvemonkeys/util/DuplicateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/DuplicateHandler<",
            "*>;"
        }
    .end annotation
.end field

.field public static final USE_LAST_VALUE:Lcom/twelvemonkeys/util/DuplicateHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twelvemonkeys/util/DuplicateHandler<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/twelvemonkeys/util/DuplicateHandler$a;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/DuplicateHandler$a;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/util/DuplicateHandler;->USE_FIRST_VALUE:Lcom/twelvemonkeys/util/DuplicateHandler;

    new-instance v0, Lcom/twelvemonkeys/util/DuplicateHandler$b;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/DuplicateHandler$b;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/util/DuplicateHandler;->USE_LAST_VALUE:Lcom/twelvemonkeys/util/DuplicateHandler;

    new-instance v0, Lcom/twelvemonkeys/util/DuplicateHandler$c;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/DuplicateHandler$c;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/util/DuplicateHandler;->DUPLICATES_AS_ARRAY:Lcom/twelvemonkeys/util/DuplicateHandler;

    new-instance v0, Lcom/twelvemonkeys/util/DuplicateHandler$d;

    invoke-direct {v0}, Lcom/twelvemonkeys/util/DuplicateHandler$d;-><init>()V

    sput-object v0, Lcom/twelvemonkeys/util/DuplicateHandler;->DUPLICATES_AS_CSV:Lcom/twelvemonkeys/util/DuplicateHandler;

    return-void
.end method


# virtual methods
.method public abstract resolve(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method
