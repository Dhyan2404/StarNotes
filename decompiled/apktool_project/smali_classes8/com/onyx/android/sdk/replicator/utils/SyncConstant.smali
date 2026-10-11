.class public final Lcom/onyx/android/sdk/replicator/utils/SyncConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u00084\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u00083\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008m\u0010nR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0004R\u0014\u0010\u0008\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0004R\u0014\u0010\u000c\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0004R\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0004R\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0004R\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u0004R\u0014\u0010 \u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0004R\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u0004R\u0014\u0010\"\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\"\u0010\u0004R\u0014\u0010#\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u0004R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u0004R\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008%\u0010\u0004R\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008&\u0010\u0004R\u0014\u0010\'\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0004R\u0014\u0010(\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008(\u0010\u0004R\u0014\u0010)\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008)\u0010\u0004R\u0014\u0010*\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008*\u0010\u0004R\u0014\u0010+\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008+\u0010\u0004R\u0014\u0010,\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008,\u0010\u0004R\u0014\u0010-\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008-\u0010\u0004R\u0014\u0010.\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008.\u0010\u0004R\u0014\u0010/\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008/\u0010\u0004R\u0014\u00100\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00080\u0010\u0004R\u0014\u00101\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00081\u0010\u0004R\u0014\u00102\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00082\u0010\u0004R\u0014\u00103\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00083\u0010\u0004R\u0014\u00104\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00084\u0010\u0004R\u0014\u00105\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00085\u0010\u0004R\u0014\u00106\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00086\u0010\u0004R\u0014\u00108\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0014\u0010:\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008:\u00109R\u0014\u0010;\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008;\u00109R\u0014\u0010=\u001a\u00020<8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010?\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008?\u00109R\"\u0010E\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010\u0004\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u0014\u0010F\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008F\u0010\u0004R\u0014\u0010G\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008G\u0010\u0004R\u0014\u0010H\u001a\u00020<8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008H\u0010>R\u0014\u0010I\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008I\u00109R\u0014\u0010J\u001a\u00020<8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008J\u0010>R\u0014\u0010K\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008K\u00109R\u0014\u0010L\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008L\u00109R\u0014\u0010M\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008M\u0010\u0004R\u0014\u0010N\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008N\u0010\u0004R\u0014\u0010O\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008O\u0010\u0004R\u0014\u0010P\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008P\u0010\u0004R\u0014\u0010Q\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008Q\u0010\u0004R\u0014\u0010R\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008R\u0010\u0004R\u0014\u0010S\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008S\u0010\u0004R\u0014\u0010T\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008T\u0010\u0004R\u0014\u0010U\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008U\u0010\u0004R\u0014\u0010V\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008V\u0010\u0004R\u0014\u0010W\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008W\u0010\u0004R\u0014\u0010X\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008X\u0010\u0004R\u0014\u0010Y\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008Y\u0010\u0004R\u0014\u0010Z\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008Z\u0010\u0004R\u0014\u0010[\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008[\u0010\u0004R\u0014\u0010\\\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\\\u0010\u0004R\u0014\u0010]\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008]\u0010\u0004R\u0014\u0010^\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008^\u0010\u0004R\u0014\u0010_\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008_\u0010\u0004R\u0014\u0010`\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008`\u0010\u0004R\u0014\u0010a\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008a\u0010\u0004R\u0014\u0010b\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008b\u0010\u0004R\u0014\u0010c\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008c\u0010\u0004R\u0014\u0010d\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008d\u0010\u0004R\u0014\u0010e\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008e\u0010\u0004R\u0014\u0010f\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008f\u0010\u0004R\u0014\u0010g\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008g\u0010\u0004R\u0014\u0010h\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008h\u0010\u0004R\u0014\u0010i\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008i\u0010\u0004R\u0014\u0010j\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008j\u00109R\u0014\u0010k\u001a\u0002078\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008k\u00109R\u0014\u0010l\u001a\u00020<8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008l\u0010>\u00a8\u0006o"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/utils/SyncConstant;",
        "",
        "",
        "NOTE_TREE_DB_NAME",
        "Ljava/lang/String;",
        "GROUP_TREE_DB_NAME",
        "CALENDAR_LIBRARY_DB_NAME",
        "READER_LIBRARY_DB_NAME",
        "CONFIG_DB_NAME",
        "APP_DATA_DB_NAME",
        "COLLECTION_SHAPE_MODEL",
        "COLLECTION_RESOURCE_MODEL",
        "COLLECTION_LINK_MODEL",
        "COLLECTION_EXCERPT_MODEL",
        "COLLECTION_EXCERPT_COLLECTION_MODEL",
        "COLLECTION_FONT_MODEL",
        "COLLECTION_INK_FONT_MODEL",
        "COLLECTION_HWR_ACTIVATION_MODEL",
        "COLLECTION_HWR_RESOURCE_MODEL",
        "COLLECTION_STICKER_MODEL",
        "COLLECTION_STICKER_CATEGORY_MODEL",
        "COLLECTION_NOTE_TAB_DATA_MODEL",
        "COLLECTION_SYNC_PROGRESS_MODEL",
        "COLLECTION_PB_DOC_RECORD_MODEL",
        "COLLECTION_PB_USER_RECORD_MODEL",
        "COLLECTION_NOTE_EXTRA_MODEL",
        "COLLECTION_TAG_EXTRA_MODEL",
        "COLLECTION_PAGE_TAG_MODEL",
        "COLLECTION_SORT_MODEL",
        "COLLECTION_NOTIFICATION",
        "COLLECTION_TIMER_TASK",
        "COLLECTION_TIMER_HISTORY",
        "COLLECTION_TEMPLATE_MODEL",
        "COLLECTION_TEMPLATE_CATEGORY_MODEL",
        "COLLECTION_TEMPLATE_RESOURCE_MODEL",
        "COLLECTION_TEMPLATE_RECENT_USE_MODEL",
        "COLLECTION_COVER_MODEL",
        "COLLECTION_COVER_CATEGORY_MODEL",
        "COLLECTION_COVER_RESOURCE_MODEL",
        "COLLECTION_AUTO_BACKUP_MODEL",
        "COLLECTION_AUTO_BACKUP_TASK",
        "COLLECTION_VIRTUAL_TOC_MODEL",
        "COLLECTION_VIRTUAL_BOOKMARK_MODEL",
        "COLLECTION_VIRTUAL_DOC_MODEL",
        "COLLECTION_VIRTUAL_PAGE_MODEL",
        "COLLECTION_FTS_CONTENT_MODEL",
        "COLLECTION_FTS_PAGE_STATE_MODEL",
        "COLLECTION_FTS_DOC_TASK_MODEL",
        "COLLECTION_LIBRARY_DOWNLOAD_MODEL",
        "COLLECTION_MATERIAL_IMPORT_MODEL",
        "CLOUD_CONFIG_CHANNEL",
        "DEVICE_CHANNEL",
        "FAMILY_CHANNEL",
        "SYNC_ACTION_ADD",
        "SYNC_ACTION_REMOVE",
        "",
        "WAIT_STOP_TIMEOUT",
        "I",
        "WAIT_STOP_INTERVAL",
        "PRINT_WAIT_TIME_LOG_THRESHOLD",
        "",
        "REPLICATOR_RETRY_WAIT_TIME_MS",
        "J",
        "MAX_RETRY_COUNT_WHEN_INTERNAL_SERVER_ERROR",
        "a",
        "getTHUMBNAIL_FILE_EXTENSION",
        "()Ljava/lang/String;",
        "setTHUMBNAIL_FILE_EXTENSION",
        "(Ljava/lang/String;)V",
        "THUMBNAIL_FILE_EXTENSION",
        "SCOPE_READER",
        "SCOPE_NOTE",
        "DELAY_WAIT_REPLICATOR_TIME_MS",
        "NOTE_DOC_REPLICATE_RETRY_LIMIT_COUNT",
        "POST_DOC_PROGRESS_FILTER_TIME_MS",
        "HANDLE_PULL_DOC_COUNT_ONCE",
        "SUCCESS_ICON_AUTO_HIDE_TIME_MS",
        "KREADER_OSS_DIR",
        "KCALENDAR_OSS_DIR",
        "KNOTE_OSS_DIR",
        "GROUP_NOTE",
        "KSYNC_LOCAL_POINT_DIR_NAME",
        "KSYNC_LOCAL_RESOURCE_DIR_NAME",
        "KSYNC_LOCAL_LINK_DIR_NAME",
        "KSYNC_LOCAL_PAGE_DIR_NAME",
        "KSYNC_LOCAL_TAG_DIR_NAME",
        "KSYNC_LOCAL_NOTE_DIR_NAME",
        "KSYNC_LOCAL_EXTRA_DIR_NAME",
        "KSYNC_LOCAL_CACHE_DIR_NAME",
        "KSYNC_EMBED_PDF_DIR_NAME",
        "KSYNC_EMBED_DATA_DIR_NAME",
        "KSYNC_DOCUMENT_DIR_NAME",
        "KSYNC_SHAPE_DIR_NAME",
        "KSYNC_PB_DIR_NAME",
        "KSYNC_DATA_DIR_NAME",
        "KSYNC_LOG_DIR_NAME",
        "KSYNC_NETDISK_DIR_NAME",
        "KSYNC_COVER_DIR_NAME",
        "KSYNC_OSS_POINT_DIR_NAME",
        "KSYNC_OSS_RESOURCE_DIR_NAME",
        "KSYNC_OSS_THUMBNAIL_DIR_NAME",
        "KSYNC_OSS_BOOK_DIR_NAME",
        "KSYNC_COUCH_DATABASE_DIR_NAME",
        "KSYNC_BACKUP_DIR_NAME",
        "KSYNC_CONFIG_BACKUP_NAME",
        "PB_EXTRA_FILE_NAME",
        "OSS_QUERY_MAX_KEYS",
        "BATCH_SAVE_SIZE",
        "MIGRATE_LOAD_SHAPE_COUNT_ONCE",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final APP_DATA_DB_NAME:Ljava/lang/String; = "APP_DATA"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BATCH_SAVE_SIZE:I = 0x3e8

.field public static final CALENDAR_LIBRARY_DB_NAME:Ljava/lang/String; = "CALENDAR_TREE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CLOUD_CONFIG_CHANNEL:Ljava/lang/String; = "CloudConfig"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_AUTO_BACKUP_MODEL:Ljava/lang/String; = "AUTO_BACKUP_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_AUTO_BACKUP_TASK:Ljava/lang/String; = "AUTO_BACKUP_TASK"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_COVER_CATEGORY_MODEL:Ljava/lang/String; = "COVER_CATEGORY_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_COVER_MODEL:Ljava/lang/String; = "COVER_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_COVER_RESOURCE_MODEL:Ljava/lang/String; = "COVER_RESOURCE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_EXCERPT_COLLECTION_MODEL:Ljava/lang/String; = "EXCERPT_COLLECTION_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_EXCERPT_MODEL:Ljava/lang/String; = "EXCERPT_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_FONT_MODEL:Ljava/lang/String; = "VIRTUAL_FONT_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_FTS_CONTENT_MODEL:Ljava/lang/String; = "FTS_CONTENT_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_FTS_DOC_TASK_MODEL:Ljava/lang/String; = "FTS_DOC_TASK_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_FTS_PAGE_STATE_MODEL:Ljava/lang/String; = "FTS_PAGE_STATE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_HWR_ACTIVATION_MODEL:Ljava/lang/String; = "HWR_ACTIVATION_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_HWR_RESOURCE_MODEL:Ljava/lang/String; = "HWR_RESOURCE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_INK_FONT_MODEL:Ljava/lang/String; = "INK_FONT_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_LIBRARY_DOWNLOAD_MODEL:Ljava/lang/String; = "LIBRARY_DOWNLOAD_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_LINK_MODEL:Ljava/lang/String; = "LINK_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_MATERIAL_IMPORT_MODEL:Ljava/lang/String; = "MATERIAL_IMPORT_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_NOTE_EXTRA_MODEL:Ljava/lang/String; = "NOTE_EXTRA_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_NOTE_TAB_DATA_MODEL:Ljava/lang/String; = "NOTE_TAB_DATA_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_NOTIFICATION:Ljava/lang/String; = "NOTIFICATION_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_PAGE_TAG_MODEL:Ljava/lang/String; = "PAGE_TAG_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_PB_DOC_RECORD_MODEL:Ljava/lang/String; = "PB_DOC_RECORD_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_PB_USER_RECORD_MODEL:Ljava/lang/String; = "PB_USER_RECORD_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_RESOURCE_MODEL:Ljava/lang/String; = "RESOURCE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_SHAPE_MODEL:Ljava/lang/String; = "SHAPE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_SORT_MODEL:Ljava/lang/String; = "SORT_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_STICKER_CATEGORY_MODEL:Ljava/lang/String; = "STICKER_CATEGORY_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_STICKER_MODEL:Ljava/lang/String; = "STICKER_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_SYNC_PROGRESS_MODEL:Ljava/lang/String; = "SYNC_PROGRESS_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_TAG_EXTRA_MODEL:Ljava/lang/String; = "TAG_EXTRA_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_TEMPLATE_CATEGORY_MODEL:Ljava/lang/String; = "TEMPLATE_CATEGORY_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_TEMPLATE_MODEL:Ljava/lang/String; = "TEMPLATE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_TEMPLATE_RECENT_USE_MODEL:Ljava/lang/String; = "TEMPLATE_RECENT_USE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_TEMPLATE_RESOURCE_MODEL:Ljava/lang/String; = "TEMPLATE_RESOURCE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_TIMER_HISTORY:Ljava/lang/String; = "TIMER_HISTORY_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_TIMER_TASK:Ljava/lang/String; = "TIMER_TASK_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_VIRTUAL_BOOKMARK_MODEL:Ljava/lang/String; = "VIRTUAL_BOOKMARK_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_VIRTUAL_DOC_MODEL:Ljava/lang/String; = "VIRTUAL_DOC_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_VIRTUAL_PAGE_MODEL:Ljava/lang/String; = "VIRTUAL_PAGE_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLLECTION_VIRTUAL_TOC_MODEL:Ljava/lang/String; = "VIRTUAL_TOC_MODEL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONFIG_DB_NAME:Ljava/lang/String; = "CONFIG"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DELAY_WAIT_REPLICATOR_TIME_MS:J = 0x3e8L

.field public static final DEVICE_CHANNEL:Ljava/lang/String; = "DEVICE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FAMILY_CHANNEL:Ljava/lang/String; = "FAMILY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GROUP_NOTE:Ljava/lang/String; = "groupNotes"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GROUP_TREE_DB_NAME:Ljava/lang/String; = "GROUP_TREE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HANDLE_PULL_DOC_COUNT_ONCE:I = 0x3e8

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/utils/SyncConstant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KCALENDAR_OSS_DIR:Ljava/lang/String; = "calendar"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KNOTE_OSS_DIR:Ljava/lang/String; = "note"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KREADER_OSS_DIR:Ljava/lang/String; = "reader"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_BACKUP_DIR_NAME:Ljava/lang/String; = "Backup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_CONFIG_BACKUP_NAME:Ljava/lang/String; = "config-backup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_COUCH_DATABASE_DIR_NAME:Ljava/lang/String; = "couch"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_COVER_DIR_NAME:Ljava/lang/String; = "cover"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_DATA_DIR_NAME:Ljava/lang/String; = "data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_DOCUMENT_DIR_NAME:Ljava/lang/String; = "document"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_EMBED_DATA_DIR_NAME:Ljava/lang/String; = "embed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_EMBED_PDF_DIR_NAME:Ljava/lang/String; = "pdf"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_CACHE_DIR_NAME:Ljava/lang/String; = "cache"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_EXTRA_DIR_NAME:Ljava/lang/String; = "extra"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_LINK_DIR_NAME:Ljava/lang/String; = "link"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_NOTE_DIR_NAME:Ljava/lang/String; = "note"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_PAGE_DIR_NAME:Ljava/lang/String; = "page"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_POINT_DIR_NAME:Ljava/lang/String; = "point"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_RESOURCE_DIR_NAME:Ljava/lang/String; = "resource"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOCAL_TAG_DIR_NAME:Ljava/lang/String; = "tag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_LOG_DIR_NAME:Ljava/lang/String; = "log"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_NETDISK_DIR_NAME:Ljava/lang/String; = "NetDisk"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_OSS_BOOK_DIR_NAME:Ljava/lang/String; = "book"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_OSS_POINT_DIR_NAME:Ljava/lang/String; = "point"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_OSS_RESOURCE_DIR_NAME:Ljava/lang/String; = "resource"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_OSS_THUMBNAIL_DIR_NAME:Ljava/lang/String; = "thumbnail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_PB_DIR_NAME:Ljava/lang/String; = "pb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KSYNC_SHAPE_DIR_NAME:Ljava/lang/String; = "shape"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MAX_RETRY_COUNT_WHEN_INTERNAL_SERVER_ERROR:I = 0x3

.field public static final MIGRATE_LOAD_SHAPE_COUNT_ONCE:J = 0x7d0L

.field public static final NOTE_DOC_REPLICATE_RETRY_LIMIT_COUNT:I = 0x3

.field public static final NOTE_TREE_DB_NAME:Ljava/lang/String; = "NOTE_TREE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OSS_QUERY_MAX_KEYS:I = 0x3e8

.field public static final PB_EXTRA_FILE_NAME:Ljava/lang/String; = "extra"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final POST_DOC_PROGRESS_FILTER_TIME_MS:J = 0x1f4L

.field public static final PRINT_WAIT_TIME_LOG_THRESHOLD:I = 0x3e8

.field public static final READER_LIBRARY_DB_NAME:Ljava/lang/String; = "READER_LIBRARY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REPLICATOR_RETRY_WAIT_TIME_MS:J = 0xbb8L

.field public static final SCOPE_NOTE:Ljava/lang/String; = "note"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SCOPE_READER:Ljava/lang/String; = "reader"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SUCCESS_ICON_AUTO_HIDE_TIME_MS:I = 0xbb8

.field public static final SYNC_ACTION_ADD:Ljava/lang/String; = "add"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SYNC_ACTION_REMOVE:Ljava/lang/String; = "remove"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final WAIT_STOP_INTERVAL:I = 0x12c

.field public static final WAIT_STOP_TIMEOUT:I = 0x7530

.field public static a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/utils/SyncConstant;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/utils/SyncConstant;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/utils/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/SyncConstant;

    const-string v0, ".png"

    sput-object v0, Lcom/onyx/android/sdk/replicator/utils/SyncConstant;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTHUMBNAIL_FILE_EXTENSION()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/replicator/utils/SyncConstant;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setTHUMBNAIL_FILE_EXTENSION(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/replicator/utils/SyncConstant;->a:Ljava/lang/String;

    return-void
.end method
