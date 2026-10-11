.class Lsun/font/FreetypeFontScaler$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/FreetypeFontScaler;->disposeScaler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/FreetypeFontScaler;


# direct methods
.method public constructor <init>(Lsun/font/FreetypeFontScaler;)V
    .locals 0

    iput-object p1, p0, Lsun/font/FreetypeFontScaler$1;->this$0:Lsun/font/FreetypeFontScaler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lsun/font/FreetypeFontScaler$1;->this$0:Lsun/font/FreetypeFontScaler;

    invoke-virtual {p0}, Lsun/font/FreetypeFontScaler;->dispose()V

    return-void
.end method
