.class public final Lcom/onyx/galaxy/note/message/data/MessageTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/message/data/MessageTypes;",
        "",
        "()V",
        "BANNER_BROADCAST",
        "",
        "GUIDE_IMAGE",
        "GUIDE_MIX",
        "GUIDE_TEXT",
        "LINK_RED_BOOK",
        "LINK_WEBPAGE",
        "RELEASE_NOTE",
        "SIDEBAR_HOME",
        "SIDEBAR_SETTINGS",
        "UPGRADE_IMAGE",
        "UPGRADE_MIX",
        "UPGRADE_TEXT",
        "WEB_VIEW",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BANNER_BROADCAST:I = 0x8d

.field public static final GUIDE_IMAGE:I = 0x70

.field public static final GUIDE_MIX:I = 0x71

.field public static final GUIDE_TEXT:I = 0x6f

.field public static final INSTANCE:Lcom/onyx/galaxy/note/message/data/MessageTypes;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LINK_RED_BOOK:I = 0x84

.field public static final LINK_WEBPAGE:I = 0x83

.field public static final RELEASE_NOTE:I = 0x79

.field public static final SIDEBAR_HOME:I = 0x97

.field public static final SIDEBAR_SETTINGS:I = 0x98

.field public static final UPGRADE_IMAGE:I = 0x66

.field public static final UPGRADE_MIX:I = 0x67

.field public static final UPGRADE_TEXT:I = 0x65

.field public static final WEB_VIEW:I = 0xa1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/message/data/MessageTypes;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/message/data/MessageTypes;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/message/data/MessageTypes;->INSTANCE:Lcom/onyx/galaxy/note/message/data/MessageTypes;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
