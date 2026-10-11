.class Lorg/apache/poi/sl/PPTFactory$3;
.super Lorg/apache/poi/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/PPTFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/util/LruCache<",
        "Ljava/lang/Integer;",
        "Lorg/apache/poi/sl/usermodel/Slide<",
        "+",
        "Lorg/apache/poi/sl/usermodel/Shape;",
        "+",
        "Lorg/apache/poi/sl/usermodel/TextParagraph;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/sl/PPTFactory;


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/PPTFactory;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/PPTFactory$3;->this$0:Lorg/apache/poi/sl/PPTFactory;

    invoke-direct {p0, p2}, Lorg/apache/poi/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public entryRemoved(ZLjava/lang/Integer;Lorg/apache/poi/sl/usermodel/Slide;Lorg/apache/poi/sl/usermodel/Slide;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;",
            "Lorg/apache/poi/sl/usermodel/Slide<",
            "+",
            "Lorg/apache/poi/sl/usermodel/Shape;",
            "+",
            "Lorg/apache/poi/sl/usermodel/TextParagraph;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Lorg/apache/poi/sl/usermodel/Slide;->free()V

    :cond_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lorg/apache/poi/sl/usermodel/Slide;

    check-cast p4, Lorg/apache/poi/sl/usermodel/Slide;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/sl/PPTFactory$3;->entryRemoved(ZLjava/lang/Integer;Lorg/apache/poi/sl/usermodel/Slide;Lorg/apache/poi/sl/usermodel/Slide;)V

    return-void
.end method
