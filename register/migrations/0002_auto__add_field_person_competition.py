# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding field 'Person.competition'
        db.add_column('register_person', 'competition',
                      self.gf('django.db.models.fields.BooleanField')(default=False),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting field 'Person.competition'
        db.delete_column('register_person', 'competition')


    models = {
        'register.person': {
            'Meta': {'object_name': 'Person'},
            'abstract': ('django.db.models.fields.TextField', [], {'max_length': '20000', 'null': 'True', 'blank': 'True'}),
            'competition': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'email': ('django.db.models.fields.EmailField', [], {'max_length': '255'}),
            'first_name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'housing': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'last_name': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'presentation': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'rank': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['register.Rank']"}),
            'university': ('django.db.models.fields.CharField', [], {'max_length': '255'})
        },
        'register.rank': {
            'Meta': {'object_name': 'Rank'},
            'description': ('django.db.models.fields.CharField', [], {'max_length': '255'}),
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        }
    }

    complete_apps = ['register']