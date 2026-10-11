package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class NotebookRestrictions implements TBase<NotebookRestrictions>, Serializable, Cloneable {
    private static final int __NOCREATENOTES_ISSET_ID = 1;
    private static final int __NOCREATESHAREDNOTEBOOKS_ISSET_ID = 17;
    private static final int __NOCREATETAGS_ISSET_ID = 13;
    private static final int __NOEMAILNOTES_ISSET_ID = 5;
    private static final int __NOEXPUNGENOTEBOOK_ISSET_ID = 8;
    private static final int __NOEXPUNGENOTES_ISSET_ID = 3;
    private static final int __NOEXPUNGETAGS_ISSET_ID = 15;
    private static final int __NOPUBLISHTOBUSINESSLIBRARY_ISSET_ID = 12;
    private static final int __NOPUBLISHTOPUBLIC_ISSET_ID = 11;
    private static final int __NOREADNOTES_ISSET_ID = 0;
    private static final int __NOSENDMESSAGETORECIPIENTS_ISSET_ID = 6;
    private static final int __NOSETDEFAULTNOTEBOOK_ISSET_ID = 9;
    private static final int __NOSETNOTEBOOKSTACK_ISSET_ID = 10;
    private static final int __NOSETPARENTTAG_ISSET_ID = 16;
    private static final int __NOSHARENOTES_ISSET_ID = 4;
    private static final int __NOUPDATENOTEBOOK_ISSET_ID = 7;
    private static final int __NOUPDATENOTES_ISSET_ID = 2;
    private static final int __NOUPDATETAGS_ISSET_ID = 14;
    private boolean[] __isset_vector;
    private SharedNotebookInstanceRestrictions expungeWhichSharedNotebookRestrictions;
    private boolean noCreateNotes;
    private boolean noCreateSharedNotebooks;
    private boolean noCreateTags;
    private boolean noEmailNotes;
    private boolean noExpungeNotebook;
    private boolean noExpungeNotes;
    private boolean noExpungeTags;
    private boolean noPublishToBusinessLibrary;
    private boolean noPublishToPublic;
    private boolean noReadNotes;
    private boolean noSendMessageToRecipients;
    private boolean noSetDefaultNotebook;
    private boolean noSetNotebookStack;
    private boolean noSetParentTag;
    private boolean noShareNotes;
    private boolean noUpdateNotebook;
    private boolean noUpdateNotes;
    private boolean noUpdateTags;
    private SharedNotebookInstanceRestrictions updateWhichSharedNotebookRestrictions;
    private static final TStruct STRUCT_DESC = new TStruct("NotebookRestrictions");
    private static final TField NO_READ_NOTES_FIELD_DESC = new TField("noReadNotes", (byte) 2, 1);
    private static final TField NO_CREATE_NOTES_FIELD_DESC = new TField("noCreateNotes", (byte) 2, 2);
    private static final TField NO_UPDATE_NOTES_FIELD_DESC = new TField("noUpdateNotes", (byte) 2, 3);
    private static final TField NO_EXPUNGE_NOTES_FIELD_DESC = new TField("noExpungeNotes", (byte) 2, 4);
    private static final TField NO_SHARE_NOTES_FIELD_DESC = new TField("noShareNotes", (byte) 2, 5);
    private static final TField NO_EMAIL_NOTES_FIELD_DESC = new TField("noEmailNotes", (byte) 2, 6);
    private static final TField NO_SEND_MESSAGE_TO_RECIPIENTS_FIELD_DESC = new TField("noSendMessageToRecipients", (byte) 2, 7);
    private static final TField NO_UPDATE_NOTEBOOK_FIELD_DESC = new TField("noUpdateNotebook", (byte) 2, 8);
    private static final TField NO_EXPUNGE_NOTEBOOK_FIELD_DESC = new TField("noExpungeNotebook", (byte) 2, 9);
    private static final TField NO_SET_DEFAULT_NOTEBOOK_FIELD_DESC = new TField("noSetDefaultNotebook", (byte) 2, 10);
    private static final TField NO_SET_NOTEBOOK_STACK_FIELD_DESC = new TField("noSetNotebookStack", (byte) 2, 11);
    private static final TField NO_PUBLISH_TO_PUBLIC_FIELD_DESC = new TField("noPublishToPublic", (byte) 2, 12);
    private static final TField NO_PUBLISH_TO_BUSINESS_LIBRARY_FIELD_DESC = new TField("noPublishToBusinessLibrary", (byte) 2, 13);
    private static final TField NO_CREATE_TAGS_FIELD_DESC = new TField("noCreateTags", (byte) 2, 14);
    private static final TField NO_UPDATE_TAGS_FIELD_DESC = new TField("noUpdateTags", (byte) 2, 15);
    private static final TField NO_EXPUNGE_TAGS_FIELD_DESC = new TField("noExpungeTags", (byte) 2, 16);
    private static final TField NO_SET_PARENT_TAG_FIELD_DESC = new TField("noSetParentTag", (byte) 2, 17);
    private static final TField NO_CREATE_SHARED_NOTEBOOKS_FIELD_DESC = new TField("noCreateSharedNotebooks", (byte) 2, 18);
    private static final TField UPDATE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC = new TField("updateWhichSharedNotebookRestrictions", (byte) 8, 19);
    private static final TField EXPUNGE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC = new TField("expungeWhichSharedNotebookRestrictions", (byte) 8, 20);

    public NotebookRestrictions() {
        this.__isset_vector = new boolean[18];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setNoReadNotesIsSet(false);
        this.noReadNotes = false;
        setNoCreateNotesIsSet(false);
        this.noCreateNotes = false;
        setNoUpdateNotesIsSet(false);
        this.noUpdateNotes = false;
        setNoExpungeNotesIsSet(false);
        this.noExpungeNotes = false;
        setNoShareNotesIsSet(false);
        this.noShareNotes = false;
        setNoEmailNotesIsSet(false);
        this.noEmailNotes = false;
        setNoSendMessageToRecipientsIsSet(false);
        this.noSendMessageToRecipients = false;
        setNoUpdateNotebookIsSet(false);
        this.noUpdateNotebook = false;
        setNoExpungeNotebookIsSet(false);
        this.noExpungeNotebook = false;
        setNoSetDefaultNotebookIsSet(false);
        this.noSetDefaultNotebook = false;
        setNoSetNotebookStackIsSet(false);
        this.noSetNotebookStack = false;
        setNoPublishToPublicIsSet(false);
        this.noPublishToPublic = false;
        setNoPublishToBusinessLibraryIsSet(false);
        this.noPublishToBusinessLibrary = false;
        setNoCreateTagsIsSet(false);
        this.noCreateTags = false;
        setNoUpdateTagsIsSet(false);
        this.noUpdateTags = false;
        setNoExpungeTagsIsSet(false);
        this.noExpungeTags = false;
        setNoSetParentTagIsSet(false);
        this.noSetParentTag = false;
        setNoCreateSharedNotebooksIsSet(false);
        this.noCreateSharedNotebooks = false;
        this.updateWhichSharedNotebookRestrictions = null;
        this.expungeWhichSharedNotebookRestrictions = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NotebookRestrictions)) {
            return equals((NotebookRestrictions) obj);
        }
        return false;
    }

    public SharedNotebookInstanceRestrictions getExpungeWhichSharedNotebookRestrictions() {
        return this.expungeWhichSharedNotebookRestrictions;
    }

    public SharedNotebookInstanceRestrictions getUpdateWhichSharedNotebookRestrictions() {
        return this.updateWhichSharedNotebookRestrictions;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isNoCreateNotes() {
        return this.noCreateNotes;
    }

    public boolean isNoCreateSharedNotebooks() {
        return this.noCreateSharedNotebooks;
    }

    public boolean isNoCreateTags() {
        return this.noCreateTags;
    }

    public boolean isNoEmailNotes() {
        return this.noEmailNotes;
    }

    public boolean isNoExpungeNotebook() {
        return this.noExpungeNotebook;
    }

    public boolean isNoExpungeNotes() {
        return this.noExpungeNotes;
    }

    public boolean isNoExpungeTags() {
        return this.noExpungeTags;
    }

    public boolean isNoPublishToBusinessLibrary() {
        return this.noPublishToBusinessLibrary;
    }

    public boolean isNoPublishToPublic() {
        return this.noPublishToPublic;
    }

    public boolean isNoReadNotes() {
        return this.noReadNotes;
    }

    public boolean isNoSendMessageToRecipients() {
        return this.noSendMessageToRecipients;
    }

    public boolean isNoSetDefaultNotebook() {
        return this.noSetDefaultNotebook;
    }

    public boolean isNoSetNotebookStack() {
        return this.noSetNotebookStack;
    }

    public boolean isNoSetParentTag() {
        return this.noSetParentTag;
    }

    public boolean isNoShareNotes() {
        return this.noShareNotes;
    }

    public boolean isNoUpdateNotebook() {
        return this.noUpdateNotebook;
    }

    public boolean isNoUpdateNotes() {
        return this.noUpdateNotes;
    }

    public boolean isNoUpdateTags() {
        return this.noUpdateTags;
    }

    public boolean isSetExpungeWhichSharedNotebookRestrictions() {
        return this.expungeWhichSharedNotebookRestrictions != null;
    }

    public boolean isSetNoCreateNotes() {
        return this.__isset_vector[1];
    }

    public boolean isSetNoCreateSharedNotebooks() {
        return this.__isset_vector[17];
    }

    public boolean isSetNoCreateTags() {
        return this.__isset_vector[13];
    }

    public boolean isSetNoEmailNotes() {
        return this.__isset_vector[5];
    }

    public boolean isSetNoExpungeNotebook() {
        return this.__isset_vector[8];
    }

    public boolean isSetNoExpungeNotes() {
        return this.__isset_vector[3];
    }

    public boolean isSetNoExpungeTags() {
        return this.__isset_vector[15];
    }

    public boolean isSetNoPublishToBusinessLibrary() {
        return this.__isset_vector[12];
    }

    public boolean isSetNoPublishToPublic() {
        return this.__isset_vector[11];
    }

    public boolean isSetNoReadNotes() {
        return this.__isset_vector[0];
    }

    public boolean isSetNoSendMessageToRecipients() {
        return this.__isset_vector[6];
    }

    public boolean isSetNoSetDefaultNotebook() {
        return this.__isset_vector[9];
    }

    public boolean isSetNoSetNotebookStack() {
        return this.__isset_vector[10];
    }

    public boolean isSetNoSetParentTag() {
        return this.__isset_vector[16];
    }

    public boolean isSetNoShareNotes() {
        return this.__isset_vector[4];
    }

    public boolean isSetNoUpdateNotebook() {
        return this.__isset_vector[7];
    }

    public boolean isSetNoUpdateNotes() {
        return this.__isset_vector[2];
    }

    public boolean isSetNoUpdateTags() {
        return this.__isset_vector[14];
    }

    public boolean isSetUpdateWhichSharedNotebookRestrictions() {
        return this.updateWhichSharedNotebookRestrictions != null;
    }

    @Override // com.evernote.thrift.TBase
    public void read(TProtocol tProtocol) throws TException {
        tProtocol.readStructBegin();
        while (true) {
            TField readFieldBegin = tProtocol.readFieldBegin();
            byte b = readFieldBegin.type;
            if (b == 0) {
                tProtocol.readStructEnd();
                validate();
                return;
            }
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noReadNotes = tProtocol.readBool();
                        setNoReadNotesIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noCreateNotes = tProtocol.readBool();
                        setNoCreateNotesIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noUpdateNotes = tProtocol.readBool();
                        setNoUpdateNotesIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noExpungeNotes = tProtocol.readBool();
                        setNoExpungeNotesIsSet(true);
                        break;
                    }
                case 5:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noShareNotes = tProtocol.readBool();
                        setNoShareNotesIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noEmailNotes = tProtocol.readBool();
                        setNoEmailNotesIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noSendMessageToRecipients = tProtocol.readBool();
                        setNoSendMessageToRecipientsIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noUpdateNotebook = tProtocol.readBool();
                        setNoUpdateNotebookIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noExpungeNotebook = tProtocol.readBool();
                        setNoExpungeNotebookIsSet(true);
                        break;
                    }
                case 10:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noSetDefaultNotebook = tProtocol.readBool();
                        setNoSetDefaultNotebookIsSet(true);
                        break;
                    }
                case 11:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noSetNotebookStack = tProtocol.readBool();
                        setNoSetNotebookStackIsSet(true);
                        break;
                    }
                case 12:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noPublishToPublic = tProtocol.readBool();
                        setNoPublishToPublicIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noPublishToBusinessLibrary = tProtocol.readBool();
                        setNoPublishToBusinessLibraryIsSet(true);
                        break;
                    }
                case 14:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noCreateTags = tProtocol.readBool();
                        setNoCreateTagsIsSet(true);
                        break;
                    }
                case 15:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noUpdateTags = tProtocol.readBool();
                        setNoUpdateTagsIsSet(true);
                        break;
                    }
                case 16:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noExpungeTags = tProtocol.readBool();
                        setNoExpungeTagsIsSet(true);
                        break;
                    }
                case 17:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noSetParentTag = tProtocol.readBool();
                        setNoSetParentTagIsSet(true);
                        break;
                    }
                case 18:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noCreateSharedNotebooks = tProtocol.readBool();
                        setNoCreateSharedNotebooksIsSet(true);
                        break;
                    }
                case 19:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updateWhichSharedNotebookRestrictions = SharedNotebookInstanceRestrictions.findByValue(tProtocol.readI32());
                        break;
                    }
                case 20:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.expungeWhichSharedNotebookRestrictions = SharedNotebookInstanceRestrictions.findByValue(tProtocol.readI32());
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setExpungeWhichSharedNotebookRestrictions(SharedNotebookInstanceRestrictions sharedNotebookInstanceRestrictions) {
        this.expungeWhichSharedNotebookRestrictions = sharedNotebookInstanceRestrictions;
    }

    public void setExpungeWhichSharedNotebookRestrictionsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.expungeWhichSharedNotebookRestrictions = null;
    }

    public void setNoCreateNotes(boolean z) {
        this.noCreateNotes = z;
        setNoCreateNotesIsSet(true);
    }

    public void setNoCreateNotesIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setNoCreateSharedNotebooks(boolean z) {
        this.noCreateSharedNotebooks = z;
        setNoCreateSharedNotebooksIsSet(true);
    }

    public void setNoCreateSharedNotebooksIsSet(boolean z) {
        this.__isset_vector[17] = z;
    }

    public void setNoCreateTags(boolean z) {
        this.noCreateTags = z;
        setNoCreateTagsIsSet(true);
    }

    public void setNoCreateTagsIsSet(boolean z) {
        this.__isset_vector[13] = z;
    }

    public void setNoEmailNotes(boolean z) {
        this.noEmailNotes = z;
        setNoEmailNotesIsSet(true);
    }

    public void setNoEmailNotesIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setNoExpungeNotebook(boolean z) {
        this.noExpungeNotebook = z;
        setNoExpungeNotebookIsSet(true);
    }

    public void setNoExpungeNotebookIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setNoExpungeNotes(boolean z) {
        this.noExpungeNotes = z;
        setNoExpungeNotesIsSet(true);
    }

    public void setNoExpungeNotesIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setNoExpungeTags(boolean z) {
        this.noExpungeTags = z;
        setNoExpungeTagsIsSet(true);
    }

    public void setNoExpungeTagsIsSet(boolean z) {
        this.__isset_vector[15] = z;
    }

    public void setNoPublishToBusinessLibrary(boolean z) {
        this.noPublishToBusinessLibrary = z;
        setNoPublishToBusinessLibraryIsSet(true);
    }

    public void setNoPublishToBusinessLibraryIsSet(boolean z) {
        this.__isset_vector[12] = z;
    }

    public void setNoPublishToPublic(boolean z) {
        this.noPublishToPublic = z;
        setNoPublishToPublicIsSet(true);
    }

    public void setNoPublishToPublicIsSet(boolean z) {
        this.__isset_vector[11] = z;
    }

    public void setNoReadNotes(boolean z) {
        this.noReadNotes = z;
        setNoReadNotesIsSet(true);
    }

    public void setNoReadNotesIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setNoSendMessageToRecipients(boolean z) {
        this.noSendMessageToRecipients = z;
        setNoSendMessageToRecipientsIsSet(true);
    }

    public void setNoSendMessageToRecipientsIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setNoSetDefaultNotebook(boolean z) {
        this.noSetDefaultNotebook = z;
        setNoSetDefaultNotebookIsSet(true);
    }

    public void setNoSetDefaultNotebookIsSet(boolean z) {
        this.__isset_vector[9] = z;
    }

    public void setNoSetNotebookStack(boolean z) {
        this.noSetNotebookStack = z;
        setNoSetNotebookStackIsSet(true);
    }

    public void setNoSetNotebookStackIsSet(boolean z) {
        this.__isset_vector[10] = z;
    }

    public void setNoSetParentTag(boolean z) {
        this.noSetParentTag = z;
        setNoSetParentTagIsSet(true);
    }

    public void setNoSetParentTagIsSet(boolean z) {
        this.__isset_vector[16] = z;
    }

    public void setNoShareNotes(boolean z) {
        this.noShareNotes = z;
        setNoShareNotesIsSet(true);
    }

    public void setNoShareNotesIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setNoUpdateNotebook(boolean z) {
        this.noUpdateNotebook = z;
        setNoUpdateNotebookIsSet(true);
    }

    public void setNoUpdateNotebookIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setNoUpdateNotes(boolean z) {
        this.noUpdateNotes = z;
        setNoUpdateNotesIsSet(true);
    }

    public void setNoUpdateNotesIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setNoUpdateTags(boolean z) {
        this.noUpdateTags = z;
        setNoUpdateTagsIsSet(true);
    }

    public void setNoUpdateTagsIsSet(boolean z) {
        this.__isset_vector[14] = z;
    }

    public void setUpdateWhichSharedNotebookRestrictions(SharedNotebookInstanceRestrictions sharedNotebookInstanceRestrictions) {
        this.updateWhichSharedNotebookRestrictions = sharedNotebookInstanceRestrictions;
    }

    public void setUpdateWhichSharedNotebookRestrictionsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.updateWhichSharedNotebookRestrictions = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("NotebookRestrictions(");
        boolean z2 = false;
        if (isSetNoReadNotes()) {
            sb.append("noReadNotes:");
            sb.append(this.noReadNotes);
            z = false;
        } else {
            z = true;
        }
        if (isSetNoCreateNotes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noCreateNotes:");
            sb.append(this.noCreateNotes);
            z = false;
        }
        if (isSetNoUpdateNotes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noUpdateNotes:");
            sb.append(this.noUpdateNotes);
            z = false;
        }
        if (isSetNoExpungeNotes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noExpungeNotes:");
            sb.append(this.noExpungeNotes);
            z = false;
        }
        if (isSetNoShareNotes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noShareNotes:");
            sb.append(this.noShareNotes);
            z = false;
        }
        if (isSetNoEmailNotes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noEmailNotes:");
            sb.append(this.noEmailNotes);
            z = false;
        }
        if (isSetNoSendMessageToRecipients()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noSendMessageToRecipients:");
            sb.append(this.noSendMessageToRecipients);
            z = false;
        }
        if (isSetNoUpdateNotebook()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noUpdateNotebook:");
            sb.append(this.noUpdateNotebook);
            z = false;
        }
        if (isSetNoExpungeNotebook()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noExpungeNotebook:");
            sb.append(this.noExpungeNotebook);
            z = false;
        }
        if (isSetNoSetDefaultNotebook()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noSetDefaultNotebook:");
            sb.append(this.noSetDefaultNotebook);
            z = false;
        }
        if (isSetNoSetNotebookStack()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noSetNotebookStack:");
            sb.append(this.noSetNotebookStack);
            z = false;
        }
        if (isSetNoPublishToPublic()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noPublishToPublic:");
            sb.append(this.noPublishToPublic);
            z = false;
        }
        if (isSetNoPublishToBusinessLibrary()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noPublishToBusinessLibrary:");
            sb.append(this.noPublishToBusinessLibrary);
            z = false;
        }
        if (isSetNoCreateTags()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noCreateTags:");
            sb.append(this.noCreateTags);
            z = false;
        }
        if (isSetNoUpdateTags()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noUpdateTags:");
            sb.append(this.noUpdateTags);
            z = false;
        }
        if (isSetNoExpungeTags()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noExpungeTags:");
            sb.append(this.noExpungeTags);
            z = false;
        }
        if (isSetNoSetParentTag()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noSetParentTag:");
            sb.append(this.noSetParentTag);
            z = false;
        }
        if (isSetNoCreateSharedNotebooks()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noCreateSharedNotebooks:");
            sb.append(this.noCreateSharedNotebooks);
            z = false;
        }
        if (isSetUpdateWhichSharedNotebookRestrictions()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updateWhichSharedNotebookRestrictions:");
            SharedNotebookInstanceRestrictions sharedNotebookInstanceRestrictions = this.updateWhichSharedNotebookRestrictions;
            if (sharedNotebookInstanceRestrictions == null) {
                sb.append("null");
            } else {
                sb.append(sharedNotebookInstanceRestrictions);
            }
        } else {
            z2 = z;
        }
        if (isSetExpungeWhichSharedNotebookRestrictions()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("expungeWhichSharedNotebookRestrictions:");
            SharedNotebookInstanceRestrictions sharedNotebookInstanceRestrictions2 = this.expungeWhichSharedNotebookRestrictions;
            if (sharedNotebookInstanceRestrictions2 == null) {
                sb.append("null");
            } else {
                sb.append(sharedNotebookInstanceRestrictions2);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetExpungeWhichSharedNotebookRestrictions() {
        this.expungeWhichSharedNotebookRestrictions = null;
    }

    public void unsetNoCreateNotes() {
        this.__isset_vector[1] = false;
    }

    public void unsetNoCreateSharedNotebooks() {
        this.__isset_vector[17] = false;
    }

    public void unsetNoCreateTags() {
        this.__isset_vector[13] = false;
    }

    public void unsetNoEmailNotes() {
        this.__isset_vector[5] = false;
    }

    public void unsetNoExpungeNotebook() {
        this.__isset_vector[8] = false;
    }

    public void unsetNoExpungeNotes() {
        this.__isset_vector[3] = false;
    }

    public void unsetNoExpungeTags() {
        this.__isset_vector[15] = false;
    }

    public void unsetNoPublishToBusinessLibrary() {
        this.__isset_vector[12] = false;
    }

    public void unsetNoPublishToPublic() {
        this.__isset_vector[11] = false;
    }

    public void unsetNoReadNotes() {
        this.__isset_vector[0] = false;
    }

    public void unsetNoSendMessageToRecipients() {
        this.__isset_vector[6] = false;
    }

    public void unsetNoSetDefaultNotebook() {
        this.__isset_vector[9] = false;
    }

    public void unsetNoSetNotebookStack() {
        this.__isset_vector[10] = false;
    }

    public void unsetNoSetParentTag() {
        this.__isset_vector[16] = false;
    }

    public void unsetNoShareNotes() {
        this.__isset_vector[4] = false;
    }

    public void unsetNoUpdateNotebook() {
        this.__isset_vector[7] = false;
    }

    public void unsetNoUpdateNotes() {
        this.__isset_vector[2] = false;
    }

    public void unsetNoUpdateTags() {
        this.__isset_vector[14] = false;
    }

    public void unsetUpdateWhichSharedNotebookRestrictions() {
        this.updateWhichSharedNotebookRestrictions = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetNoReadNotes()) {
            tProtocol.writeFieldBegin(NO_READ_NOTES_FIELD_DESC);
            tProtocol.writeBool(this.noReadNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoCreateNotes()) {
            tProtocol.writeFieldBegin(NO_CREATE_NOTES_FIELD_DESC);
            tProtocol.writeBool(this.noCreateNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoUpdateNotes()) {
            tProtocol.writeFieldBegin(NO_UPDATE_NOTES_FIELD_DESC);
            tProtocol.writeBool(this.noUpdateNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoExpungeNotes()) {
            tProtocol.writeFieldBegin(NO_EXPUNGE_NOTES_FIELD_DESC);
            tProtocol.writeBool(this.noExpungeNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoShareNotes()) {
            tProtocol.writeFieldBegin(NO_SHARE_NOTES_FIELD_DESC);
            tProtocol.writeBool(this.noShareNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoEmailNotes()) {
            tProtocol.writeFieldBegin(NO_EMAIL_NOTES_FIELD_DESC);
            tProtocol.writeBool(this.noEmailNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoSendMessageToRecipients()) {
            tProtocol.writeFieldBegin(NO_SEND_MESSAGE_TO_RECIPIENTS_FIELD_DESC);
            tProtocol.writeBool(this.noSendMessageToRecipients);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoUpdateNotebook()) {
            tProtocol.writeFieldBegin(NO_UPDATE_NOTEBOOK_FIELD_DESC);
            tProtocol.writeBool(this.noUpdateNotebook);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoExpungeNotebook()) {
            tProtocol.writeFieldBegin(NO_EXPUNGE_NOTEBOOK_FIELD_DESC);
            tProtocol.writeBool(this.noExpungeNotebook);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoSetDefaultNotebook()) {
            tProtocol.writeFieldBegin(NO_SET_DEFAULT_NOTEBOOK_FIELD_DESC);
            tProtocol.writeBool(this.noSetDefaultNotebook);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoSetNotebookStack()) {
            tProtocol.writeFieldBegin(NO_SET_NOTEBOOK_STACK_FIELD_DESC);
            tProtocol.writeBool(this.noSetNotebookStack);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoPublishToPublic()) {
            tProtocol.writeFieldBegin(NO_PUBLISH_TO_PUBLIC_FIELD_DESC);
            tProtocol.writeBool(this.noPublishToPublic);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoPublishToBusinessLibrary()) {
            tProtocol.writeFieldBegin(NO_PUBLISH_TO_BUSINESS_LIBRARY_FIELD_DESC);
            tProtocol.writeBool(this.noPublishToBusinessLibrary);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoCreateTags()) {
            tProtocol.writeFieldBegin(NO_CREATE_TAGS_FIELD_DESC);
            tProtocol.writeBool(this.noCreateTags);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoUpdateTags()) {
            tProtocol.writeFieldBegin(NO_UPDATE_TAGS_FIELD_DESC);
            tProtocol.writeBool(this.noUpdateTags);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoExpungeTags()) {
            tProtocol.writeFieldBegin(NO_EXPUNGE_TAGS_FIELD_DESC);
            tProtocol.writeBool(this.noExpungeTags);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoSetParentTag()) {
            tProtocol.writeFieldBegin(NO_SET_PARENT_TAG_FIELD_DESC);
            tProtocol.writeBool(this.noSetParentTag);
            tProtocol.writeFieldEnd();
        }
        if (isSetNoCreateSharedNotebooks()) {
            tProtocol.writeFieldBegin(NO_CREATE_SHARED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.noCreateSharedNotebooks);
            tProtocol.writeFieldEnd();
        }
        if (this.updateWhichSharedNotebookRestrictions != null && isSetUpdateWhichSharedNotebookRestrictions()) {
            tProtocol.writeFieldBegin(UPDATE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC);
            tProtocol.writeI32(this.updateWhichSharedNotebookRestrictions.getValue());
            tProtocol.writeFieldEnd();
        }
        if (this.expungeWhichSharedNotebookRestrictions != null && isSetExpungeWhichSharedNotebookRestrictions()) {
            tProtocol.writeFieldBegin(EXPUNGE_WHICH_SHARED_NOTEBOOK_RESTRICTIONS_FIELD_DESC);
            tProtocol.writeI32(this.expungeWhichSharedNotebookRestrictions.getValue());
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NotebookRestrictions notebookRestrictions) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        int compareTo7;
        int compareTo8;
        int compareTo9;
        int compareTo10;
        int compareTo11;
        int compareTo12;
        int compareTo13;
        int compareTo14;
        int compareTo15;
        int compareTo16;
        int compareTo17;
        int compareTo18;
        int compareTo19;
        int compareTo20;
        if (!getClass().equals(notebookRestrictions.getClass())) {
            return getClass().getName().compareTo(notebookRestrictions.getClass().getName());
        }
        int compareTo21 = Boolean.valueOf(isSetNoReadNotes()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoReadNotes()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetNoReadNotes() && (compareTo20 = TBaseHelper.compareTo(this.noReadNotes, notebookRestrictions.noReadNotes)) != 0) {
            return compareTo20;
        }
        int compareTo22 = Boolean.valueOf(isSetNoCreateNotes()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoCreateNotes()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetNoCreateNotes() && (compareTo19 = TBaseHelper.compareTo(this.noCreateNotes, notebookRestrictions.noCreateNotes)) != 0) {
            return compareTo19;
        }
        int compareTo23 = Boolean.valueOf(isSetNoUpdateNotes()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoUpdateNotes()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetNoUpdateNotes() && (compareTo18 = TBaseHelper.compareTo(this.noUpdateNotes, notebookRestrictions.noUpdateNotes)) != 0) {
            return compareTo18;
        }
        int compareTo24 = Boolean.valueOf(isSetNoExpungeNotes()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoExpungeNotes()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetNoExpungeNotes() && (compareTo17 = TBaseHelper.compareTo(this.noExpungeNotes, notebookRestrictions.noExpungeNotes)) != 0) {
            return compareTo17;
        }
        int compareTo25 = Boolean.valueOf(isSetNoShareNotes()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoShareNotes()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetNoShareNotes() && (compareTo16 = TBaseHelper.compareTo(this.noShareNotes, notebookRestrictions.noShareNotes)) != 0) {
            return compareTo16;
        }
        int compareTo26 = Boolean.valueOf(isSetNoEmailNotes()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoEmailNotes()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (isSetNoEmailNotes() && (compareTo15 = TBaseHelper.compareTo(this.noEmailNotes, notebookRestrictions.noEmailNotes)) != 0) {
            return compareTo15;
        }
        int compareTo27 = Boolean.valueOf(isSetNoSendMessageToRecipients()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoSendMessageToRecipients()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (isSetNoSendMessageToRecipients() && (compareTo14 = TBaseHelper.compareTo(this.noSendMessageToRecipients, notebookRestrictions.noSendMessageToRecipients)) != 0) {
            return compareTo14;
        }
        int compareTo28 = Boolean.valueOf(isSetNoUpdateNotebook()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoUpdateNotebook()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (isSetNoUpdateNotebook() && (compareTo13 = TBaseHelper.compareTo(this.noUpdateNotebook, notebookRestrictions.noUpdateNotebook)) != 0) {
            return compareTo13;
        }
        int compareTo29 = Boolean.valueOf(isSetNoExpungeNotebook()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoExpungeNotebook()));
        if (compareTo29 != 0) {
            return compareTo29;
        }
        if (isSetNoExpungeNotebook() && (compareTo12 = TBaseHelper.compareTo(this.noExpungeNotebook, notebookRestrictions.noExpungeNotebook)) != 0) {
            return compareTo12;
        }
        int compareTo30 = Boolean.valueOf(isSetNoSetDefaultNotebook()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoSetDefaultNotebook()));
        if (compareTo30 != 0) {
            return compareTo30;
        }
        if (isSetNoSetDefaultNotebook() && (compareTo11 = TBaseHelper.compareTo(this.noSetDefaultNotebook, notebookRestrictions.noSetDefaultNotebook)) != 0) {
            return compareTo11;
        }
        int compareTo31 = Boolean.valueOf(isSetNoSetNotebookStack()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoSetNotebookStack()));
        if (compareTo31 != 0) {
            return compareTo31;
        }
        if (isSetNoSetNotebookStack() && (compareTo10 = TBaseHelper.compareTo(this.noSetNotebookStack, notebookRestrictions.noSetNotebookStack)) != 0) {
            return compareTo10;
        }
        int compareTo32 = Boolean.valueOf(isSetNoPublishToPublic()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoPublishToPublic()));
        if (compareTo32 != 0) {
            return compareTo32;
        }
        if (isSetNoPublishToPublic() && (compareTo9 = TBaseHelper.compareTo(this.noPublishToPublic, notebookRestrictions.noPublishToPublic)) != 0) {
            return compareTo9;
        }
        int compareTo33 = Boolean.valueOf(isSetNoPublishToBusinessLibrary()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoPublishToBusinessLibrary()));
        if (compareTo33 != 0) {
            return compareTo33;
        }
        if (isSetNoPublishToBusinessLibrary() && (compareTo8 = TBaseHelper.compareTo(this.noPublishToBusinessLibrary, notebookRestrictions.noPublishToBusinessLibrary)) != 0) {
            return compareTo8;
        }
        int compareTo34 = Boolean.valueOf(isSetNoCreateTags()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoCreateTags()));
        if (compareTo34 != 0) {
            return compareTo34;
        }
        if (isSetNoCreateTags() && (compareTo7 = TBaseHelper.compareTo(this.noCreateTags, notebookRestrictions.noCreateTags)) != 0) {
            return compareTo7;
        }
        int compareTo35 = Boolean.valueOf(isSetNoUpdateTags()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoUpdateTags()));
        if (compareTo35 != 0) {
            return compareTo35;
        }
        if (isSetNoUpdateTags() && (compareTo6 = TBaseHelper.compareTo(this.noUpdateTags, notebookRestrictions.noUpdateTags)) != 0) {
            return compareTo6;
        }
        int compareTo36 = Boolean.valueOf(isSetNoExpungeTags()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoExpungeTags()));
        if (compareTo36 != 0) {
            return compareTo36;
        }
        if (isSetNoExpungeTags() && (compareTo5 = TBaseHelper.compareTo(this.noExpungeTags, notebookRestrictions.noExpungeTags)) != 0) {
            return compareTo5;
        }
        int compareTo37 = Boolean.valueOf(isSetNoSetParentTag()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoSetParentTag()));
        if (compareTo37 != 0) {
            return compareTo37;
        }
        if (isSetNoSetParentTag() && (compareTo4 = TBaseHelper.compareTo(this.noSetParentTag, notebookRestrictions.noSetParentTag)) != 0) {
            return compareTo4;
        }
        int compareTo38 = Boolean.valueOf(isSetNoCreateSharedNotebooks()).compareTo(Boolean.valueOf(notebookRestrictions.isSetNoCreateSharedNotebooks()));
        if (compareTo38 != 0) {
            return compareTo38;
        }
        if (isSetNoCreateSharedNotebooks() && (compareTo3 = TBaseHelper.compareTo(this.noCreateSharedNotebooks, notebookRestrictions.noCreateSharedNotebooks)) != 0) {
            return compareTo3;
        }
        int compareTo39 = Boolean.valueOf(isSetUpdateWhichSharedNotebookRestrictions()).compareTo(Boolean.valueOf(notebookRestrictions.isSetUpdateWhichSharedNotebookRestrictions()));
        if (compareTo39 != 0) {
            return compareTo39;
        }
        if (isSetUpdateWhichSharedNotebookRestrictions() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.updateWhichSharedNotebookRestrictions, (Comparable) notebookRestrictions.updateWhichSharedNotebookRestrictions)) != 0) {
            return compareTo2;
        }
        int compareTo40 = Boolean.valueOf(isSetExpungeWhichSharedNotebookRestrictions()).compareTo(Boolean.valueOf(notebookRestrictions.isSetExpungeWhichSharedNotebookRestrictions()));
        if (compareTo40 != 0) {
            return compareTo40;
        }
        if (!isSetExpungeWhichSharedNotebookRestrictions() || (compareTo = TBaseHelper.compareTo((Comparable) this.expungeWhichSharedNotebookRestrictions, (Comparable) notebookRestrictions.expungeWhichSharedNotebookRestrictions)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NotebookRestrictions> deepCopy2() {
        return new NotebookRestrictions(this);
    }

    public NotebookRestrictions(NotebookRestrictions notebookRestrictions) {
        boolean[] zArr = new boolean[18];
        this.__isset_vector = zArr;
        boolean[] zArr2 = notebookRestrictions.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.noReadNotes = notebookRestrictions.noReadNotes;
        this.noCreateNotes = notebookRestrictions.noCreateNotes;
        this.noUpdateNotes = notebookRestrictions.noUpdateNotes;
        this.noExpungeNotes = notebookRestrictions.noExpungeNotes;
        this.noShareNotes = notebookRestrictions.noShareNotes;
        this.noEmailNotes = notebookRestrictions.noEmailNotes;
        this.noSendMessageToRecipients = notebookRestrictions.noSendMessageToRecipients;
        this.noUpdateNotebook = notebookRestrictions.noUpdateNotebook;
        this.noExpungeNotebook = notebookRestrictions.noExpungeNotebook;
        this.noSetDefaultNotebook = notebookRestrictions.noSetDefaultNotebook;
        this.noSetNotebookStack = notebookRestrictions.noSetNotebookStack;
        this.noPublishToPublic = notebookRestrictions.noPublishToPublic;
        this.noPublishToBusinessLibrary = notebookRestrictions.noPublishToBusinessLibrary;
        this.noCreateTags = notebookRestrictions.noCreateTags;
        this.noUpdateTags = notebookRestrictions.noUpdateTags;
        this.noExpungeTags = notebookRestrictions.noExpungeTags;
        this.noSetParentTag = notebookRestrictions.noSetParentTag;
        this.noCreateSharedNotebooks = notebookRestrictions.noCreateSharedNotebooks;
        if (notebookRestrictions.isSetUpdateWhichSharedNotebookRestrictions()) {
            this.updateWhichSharedNotebookRestrictions = notebookRestrictions.updateWhichSharedNotebookRestrictions;
        }
        if (notebookRestrictions.isSetExpungeWhichSharedNotebookRestrictions()) {
            this.expungeWhichSharedNotebookRestrictions = notebookRestrictions.expungeWhichSharedNotebookRestrictions;
        }
    }

    public boolean equals(NotebookRestrictions notebookRestrictions) {
        if (notebookRestrictions == null) {
            return false;
        }
        boolean isSetNoReadNotes = isSetNoReadNotes();
        boolean isSetNoReadNotes2 = notebookRestrictions.isSetNoReadNotes();
        if ((isSetNoReadNotes || isSetNoReadNotes2) && !(isSetNoReadNotes && isSetNoReadNotes2 && this.noReadNotes == notebookRestrictions.noReadNotes)) {
            return false;
        }
        boolean isSetNoCreateNotes = isSetNoCreateNotes();
        boolean isSetNoCreateNotes2 = notebookRestrictions.isSetNoCreateNotes();
        if ((isSetNoCreateNotes || isSetNoCreateNotes2) && !(isSetNoCreateNotes && isSetNoCreateNotes2 && this.noCreateNotes == notebookRestrictions.noCreateNotes)) {
            return false;
        }
        boolean isSetNoUpdateNotes = isSetNoUpdateNotes();
        boolean isSetNoUpdateNotes2 = notebookRestrictions.isSetNoUpdateNotes();
        if ((isSetNoUpdateNotes || isSetNoUpdateNotes2) && !(isSetNoUpdateNotes && isSetNoUpdateNotes2 && this.noUpdateNotes == notebookRestrictions.noUpdateNotes)) {
            return false;
        }
        boolean isSetNoExpungeNotes = isSetNoExpungeNotes();
        boolean isSetNoExpungeNotes2 = notebookRestrictions.isSetNoExpungeNotes();
        if ((isSetNoExpungeNotes || isSetNoExpungeNotes2) && !(isSetNoExpungeNotes && isSetNoExpungeNotes2 && this.noExpungeNotes == notebookRestrictions.noExpungeNotes)) {
            return false;
        }
        boolean isSetNoShareNotes = isSetNoShareNotes();
        boolean isSetNoShareNotes2 = notebookRestrictions.isSetNoShareNotes();
        if ((isSetNoShareNotes || isSetNoShareNotes2) && !(isSetNoShareNotes && isSetNoShareNotes2 && this.noShareNotes == notebookRestrictions.noShareNotes)) {
            return false;
        }
        boolean isSetNoEmailNotes = isSetNoEmailNotes();
        boolean isSetNoEmailNotes2 = notebookRestrictions.isSetNoEmailNotes();
        if ((isSetNoEmailNotes || isSetNoEmailNotes2) && !(isSetNoEmailNotes && isSetNoEmailNotes2 && this.noEmailNotes == notebookRestrictions.noEmailNotes)) {
            return false;
        }
        boolean isSetNoSendMessageToRecipients = isSetNoSendMessageToRecipients();
        boolean isSetNoSendMessageToRecipients2 = notebookRestrictions.isSetNoSendMessageToRecipients();
        if ((isSetNoSendMessageToRecipients || isSetNoSendMessageToRecipients2) && !(isSetNoSendMessageToRecipients && isSetNoSendMessageToRecipients2 && this.noSendMessageToRecipients == notebookRestrictions.noSendMessageToRecipients)) {
            return false;
        }
        boolean isSetNoUpdateNotebook = isSetNoUpdateNotebook();
        boolean isSetNoUpdateNotebook2 = notebookRestrictions.isSetNoUpdateNotebook();
        if ((isSetNoUpdateNotebook || isSetNoUpdateNotebook2) && !(isSetNoUpdateNotebook && isSetNoUpdateNotebook2 && this.noUpdateNotebook == notebookRestrictions.noUpdateNotebook)) {
            return false;
        }
        boolean isSetNoExpungeNotebook = isSetNoExpungeNotebook();
        boolean isSetNoExpungeNotebook2 = notebookRestrictions.isSetNoExpungeNotebook();
        if ((isSetNoExpungeNotebook || isSetNoExpungeNotebook2) && !(isSetNoExpungeNotebook && isSetNoExpungeNotebook2 && this.noExpungeNotebook == notebookRestrictions.noExpungeNotebook)) {
            return false;
        }
        boolean isSetNoSetDefaultNotebook = isSetNoSetDefaultNotebook();
        boolean isSetNoSetDefaultNotebook2 = notebookRestrictions.isSetNoSetDefaultNotebook();
        if ((isSetNoSetDefaultNotebook || isSetNoSetDefaultNotebook2) && !(isSetNoSetDefaultNotebook && isSetNoSetDefaultNotebook2 && this.noSetDefaultNotebook == notebookRestrictions.noSetDefaultNotebook)) {
            return false;
        }
        boolean isSetNoSetNotebookStack = isSetNoSetNotebookStack();
        boolean isSetNoSetNotebookStack2 = notebookRestrictions.isSetNoSetNotebookStack();
        if ((isSetNoSetNotebookStack || isSetNoSetNotebookStack2) && !(isSetNoSetNotebookStack && isSetNoSetNotebookStack2 && this.noSetNotebookStack == notebookRestrictions.noSetNotebookStack)) {
            return false;
        }
        boolean isSetNoPublishToPublic = isSetNoPublishToPublic();
        boolean isSetNoPublishToPublic2 = notebookRestrictions.isSetNoPublishToPublic();
        if ((isSetNoPublishToPublic || isSetNoPublishToPublic2) && !(isSetNoPublishToPublic && isSetNoPublishToPublic2 && this.noPublishToPublic == notebookRestrictions.noPublishToPublic)) {
            return false;
        }
        boolean isSetNoPublishToBusinessLibrary = isSetNoPublishToBusinessLibrary();
        boolean isSetNoPublishToBusinessLibrary2 = notebookRestrictions.isSetNoPublishToBusinessLibrary();
        if ((isSetNoPublishToBusinessLibrary || isSetNoPublishToBusinessLibrary2) && !(isSetNoPublishToBusinessLibrary && isSetNoPublishToBusinessLibrary2 && this.noPublishToBusinessLibrary == notebookRestrictions.noPublishToBusinessLibrary)) {
            return false;
        }
        boolean isSetNoCreateTags = isSetNoCreateTags();
        boolean isSetNoCreateTags2 = notebookRestrictions.isSetNoCreateTags();
        if ((isSetNoCreateTags || isSetNoCreateTags2) && !(isSetNoCreateTags && isSetNoCreateTags2 && this.noCreateTags == notebookRestrictions.noCreateTags)) {
            return false;
        }
        boolean isSetNoUpdateTags = isSetNoUpdateTags();
        boolean isSetNoUpdateTags2 = notebookRestrictions.isSetNoUpdateTags();
        if ((isSetNoUpdateTags || isSetNoUpdateTags2) && !(isSetNoUpdateTags && isSetNoUpdateTags2 && this.noUpdateTags == notebookRestrictions.noUpdateTags)) {
            return false;
        }
        boolean isSetNoExpungeTags = isSetNoExpungeTags();
        boolean isSetNoExpungeTags2 = notebookRestrictions.isSetNoExpungeTags();
        if ((isSetNoExpungeTags || isSetNoExpungeTags2) && !(isSetNoExpungeTags && isSetNoExpungeTags2 && this.noExpungeTags == notebookRestrictions.noExpungeTags)) {
            return false;
        }
        boolean isSetNoSetParentTag = isSetNoSetParentTag();
        boolean isSetNoSetParentTag2 = notebookRestrictions.isSetNoSetParentTag();
        if ((isSetNoSetParentTag || isSetNoSetParentTag2) && !(isSetNoSetParentTag && isSetNoSetParentTag2 && this.noSetParentTag == notebookRestrictions.noSetParentTag)) {
            return false;
        }
        boolean isSetNoCreateSharedNotebooks = isSetNoCreateSharedNotebooks();
        boolean isSetNoCreateSharedNotebooks2 = notebookRestrictions.isSetNoCreateSharedNotebooks();
        if ((isSetNoCreateSharedNotebooks || isSetNoCreateSharedNotebooks2) && !(isSetNoCreateSharedNotebooks && isSetNoCreateSharedNotebooks2 && this.noCreateSharedNotebooks == notebookRestrictions.noCreateSharedNotebooks)) {
            return false;
        }
        boolean isSetUpdateWhichSharedNotebookRestrictions = isSetUpdateWhichSharedNotebookRestrictions();
        boolean isSetUpdateWhichSharedNotebookRestrictions2 = notebookRestrictions.isSetUpdateWhichSharedNotebookRestrictions();
        if ((isSetUpdateWhichSharedNotebookRestrictions || isSetUpdateWhichSharedNotebookRestrictions2) && !(isSetUpdateWhichSharedNotebookRestrictions && isSetUpdateWhichSharedNotebookRestrictions2 && this.updateWhichSharedNotebookRestrictions.equals(notebookRestrictions.updateWhichSharedNotebookRestrictions))) {
            return false;
        }
        boolean isSetExpungeWhichSharedNotebookRestrictions = isSetExpungeWhichSharedNotebookRestrictions();
        boolean isSetExpungeWhichSharedNotebookRestrictions2 = notebookRestrictions.isSetExpungeWhichSharedNotebookRestrictions();
        if (isSetExpungeWhichSharedNotebookRestrictions || isSetExpungeWhichSharedNotebookRestrictions2) {
            return isSetExpungeWhichSharedNotebookRestrictions && isSetExpungeWhichSharedNotebookRestrictions2 && this.expungeWhichSharedNotebookRestrictions.equals(notebookRestrictions.expungeWhichSharedNotebookRestrictions);
        }
        return true;
    }
}
